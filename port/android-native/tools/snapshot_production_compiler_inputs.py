"""Record prebuild source hashes, then bind actual Ninja inputs to the built APK.

Compilation provenance only; external tools and gameplay equivalence are separate.
Use a fresh --directory for each artifact.
"""
import argparse,hashlib,json,subprocess
from pathlib import Path
ROOT=Path(__file__).resolve().parents[3]
p=argparse.ArgumentParser(description=__doc__);p.add_argument('phase',choices=('before','after'));p.add_argument('--directory',type=Path,required=True);p.add_argument('--ninja',type=Path);a=p.parse_args()
HERE=a.directory.resolve();HERE.mkdir(parents=True,exist_ok=True)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
before=HERE/'before.json'
if a.phase=='before':
    assert not before.exists(), 'Refusing to replace a prebuild source snapshot'
    names=subprocess.check_output(['git','ls-files','-z','--cached','--others','--exclude-standard'],cwd=ROOT).decode().split('\0')
    wanted=[name for name in names if name.startswith(('port/','vendor/','third_party/')) and
            (Path(name).suffix in ('.cpp','.c','.hpp','.h','.inl','.java','.kts','.toml') or Path(name).name=='CMakeLists.txt')]
    hashes={name:sha(ROOT/name) for name in wanted if (ROOT/name).is_file()}
    before.write_text(json.dumps(hashes,indent=2)+'\n');print('prebuild_inputs='+str(len(hashes)));raise SystemExit(0)
expected=json.loads(before.read_text());sources={};compilers={}
assert a.ninja, '--ninja is required for after'
ninja=a.ninja
assert not (HERE/'production-build-snapshot.json').exists(), 'Refusing to replace existing build provenance'
project=ROOT/'port/android-native'
for abi in ('arm64-v8a','x86_64'):
    databases=list((project/'app/.cxx/Debug').glob('*/'+abi+'/compile_commands.json'));assert len(databases)==1,databases
    database=databases[0];rows=json.loads(database.read_text());deps=subprocess.check_output([str(ninja),'-C',str(database.parent),'-t','deps'],text=True)
    candidates=[r['file'] for r in rows]+[line.strip() for line in deps.splitlines() if line.startswith('    ')]
    used={}
    for name in candidates:
        path=Path(name);path=(path if path.is_absolute() else database.parent/path).resolve()
        if not path.is_relative_to(ROOT):continue
        key=path.relative_to(ROOT).as_posix()
        if '/.cxx/' in key or '/build/' in key:continue
        value=sha(path);assert expected.get(key)==value,('changed/missing prebuild input',key)
        used[key]=value;sources[key]=value
    compilers[abi]={'compile_database_sha256':sha(database),'ninja_dependencies_sha256':hashlib.sha256(deps.encode()).hexdigest(),'repository_inputs':used}
for name in expected:
    if name.endswith('CMakeLists.txt') or name.startswith('port/android-native/') and name.endswith(('.java','.kts','.toml')):
        assert sha(ROOT/name)==expected[name],name;sources[name]=expected[name]
assert compilers['arm64-v8a']['repository_inputs']==compilers['x86_64']['repository_inputs']
apk=project/'app/build/outputs/apk/debug/app-debug.apk'
report={'validation':'PASS','apk_sha256':sha(apk),'apk_bytes':apk.stat().st_size,'source_sha256':sources,'compiler_inputs':compilers,
        'all_actual_repository_compiler_inputs_unchanged_before_and_after_build':True,
        'scope':'Actual Gradle/Ninja compiler inputs matched prebuild hashes after both native ABI builds. Tests, external SDK/JDK/toolchain files and generated build artifacts are not native source parity claims.'}
(HERE/'production-build-snapshot.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps({'validation':'PASS','source_inputs':len(sources),'apk_sha256':report['apk_sha256']}))
