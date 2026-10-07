# BRES image indices to runtime material textures

## Finding

The APK ELF statically establishes an index-based connection from BRES material sampler values to runtime texture objects:

1. CResFileManager::postLoadProcess walks the BRES image table. For each image whose SImage +0x0c word is zero, it calls the configured resource-factory virtual slot. On a non-null return, it retains that object, stores it at SImage +0x10, then releases the old value.
2. In the same function, material parameter rows of serialized type 11 through 14 are inspected. The first value cell contains a numeric image-table index, not a BRES pointer fixup. For ordinary indices, the function replaces that integer with image_table_base + index * 0x14, an SImage*.
3. collada::createMaterial later follows each texture value cell to SImage +0x10, retains that pointer, and calls the typed setParameter<intrusive_ptr<ITexture>> overload. This supplies the runtime texture object to the material parameter path.
4. The resource factory's named getTexture method reads SImage +0x08 and forwards it, along with other image/file inputs, to getTextureImpl. That implementation checks CTextureManager::getTexture(char const*, char const*); on the load path it calls CTextureManager::getTexture(IReadFile*, char const*, bool) at 0x005ed0c4.

This is the missing serialized-index → image-row → ITexture → material-parameter edge. It is established from native instructions and a corpus scan; it does not depend on parameter/image name similarity. The factory call in postLoadProcess is virtual through the resource-factory pointer at manager offset +0x24. The [factory-lifecycle supplement](factory-lifecycle/ANALYSIS.md) confirms that the manager constructor points to `DefaultResFactory`, its registered initializer installs the `CResFactory` vptr, and a static binary-Collada loader path reaches the `getTexture` virtual slot. This confirms the APK's default static route, not runtime observation of a particular load or success for every image.

## Corpus check

The existing read-only BRES parser was used to scan the same 2,900 valid files in the recovered files/data corpus. It found 4,789 material parameter rows whose names end in the literal -sampler; every such row has raw type word 11 at row offset +0x08. Their value object points to a cell whose first word is the numeric image index examined by the native conversion:

- 4,788 values are in-range image-table indices.
- One value is 0xffffffff in 3d/gameobjects/dummy_lever_lockable.bdae. Native code takes a separate branch for this value and stores the current CResFileManager* (fp) into the cell. Its downstream meaning is unresolved; it must not be described as a null or ordinary SImage*.
- In 193 rows, removing -sampler from the parameter name yields the key of the image selected by that row's numeric index. The remaining 4,595 in-range rows do not have that exact suffix/key equality. Thus names are only a convention in a subset; the serialized index is the binding used by the traced code.

Concrete example: 3d/animateddecors/cin_king_gothicus_01.bdae, SHA-256 690b9670296a1f7a467afa104988babf7493069dbf6239e88880c603ab35e27d.

- Parameter row 0x116ac has name Map__391__char_king.tga_-sampler, type 11. Its +0x14 pointer field at 0x116c0 targets the value object at 0x116c8.
- The value object's first word fixes up to cell 0x116cc; that cell contains integer index 0.
- The BRES image table starts at 0x10c9c, with 20-byte rows. Index 0 is record 0x10c9c, keyed Map__391__char_king.tga_; its +0x08 path string is q:/data/iphone/3d/textures/char_king.tga.
- Native post-load code converts index 0 to that image row address, loads a texture for the row, and writes the returned object to row +0x10. Material construction later reads that +0x10 value for the sampler parameter.

The earlier corpus report's zero direct image-record pointer-fixup result remains accurate: the material-to-image edge is a raw integer index that native code resolves, not a serialized pointer fixup.

## Evidence and provenance

Source APK SHA-256: 32c2d027b585a42547311cd95da6a3975fdb3174e663e513d42a7f49d1a4c200.

APK member lib/armeabi-v7a/libDungeonHunter2.so SHA-256: 36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80.

Exact file-backed ranges and hashes are recorded in texture-runtime-link-ranges.json. Relevant ARM excerpt is reference/texture-runtime-link.asm. CTextureManager::getTexture(IReadFile*, char const*, bool) is also present in the existing texture-lifetime manifest at 0x005ed0c4, size 332, SHA-256 aab786f07a1ab7e8c172ac1b4ea856c503a2cf53ef73f95a2245f462d1086677.

## Limits

- This is a static call/data-flow trace of the recovered ELF, not a live-device observation that every image row succeeds or every sampler is active in a rendered frame.
- SImage +0x08 is read and forwarded by CResFactory::getTexture; exact path normalization, namespace resolution, and the resulting cache-key rules remain open. The mode-gated use of SImage +0x00 also remains unnamed.
- The default resource-factory setup and one loader-to-slot path are statically verified; runtime invocation, alternate configurations, and successful loads in a live session remain unobserved.
- The lone 0xffffffff value is converted to the manager pointer by this function. The [sampler-sentinel audit](../sampler-sentinel-audit/ANALYSIS.md) traces it to the manager's +0x10 resource-map endpoint consumed as a texture parameter. Its intended semantics and rendering behavior remain unresolved.
- No builds or tests were run.
