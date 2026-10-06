import java.security.MessageDigest
import org.gradle.api.DefaultTask
import org.gradle.api.GradleException
import org.gradle.api.file.ConfigurableFileCollection
import org.gradle.api.tasks.InputFiles
import org.gradle.api.tasks.PathSensitive
import org.gradle.api.tasks.PathSensitivity
import org.gradle.api.tasks.TaskAction

plugins {
    alias(libs.plugins.android.application)
}

val dh2SourceRoot = rootProject.file("reconstruction-source").takeIf { it.exists() }
    ?: rootProject.file("../..")

android {
    namespace = "com.example.dh2"
    ndkVersion = "29.0.14206865"
    compileSdk {
        version = release(37)
    }

    defaultConfig {
        applicationId = "com.example.dh2"
        minSdk = 24
        targetSdk = 37
        versionCode = 1
        versionName = "1.0"

        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
        ndk { abiFilters += listOf("arm64-v8a", "x86_64") }
        externalNativeBuild {
            cmake {
                arguments += "-DDH2_SOURCE_DIR=${dh2SourceRoot.invariantSeparatorsPath}"
            }
        }
    }

    androidResources { noCompress += listOf("wav") }

    buildTypes {
        release {
            optimization {
                enable = true
                packageScope = setOf("androidx.**", "kotlin.**", "kotlinx.**")
            }
        }
    }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }
    externalNativeBuild {
        cmake {
            path = file("src/main/cpp/CMakeLists.txt")
            version = "3.22.1"
        }
    }
}

// Original V5 item-power tables needed by the selected gear and loot readers.
// This configuration-cache safe task gates Android builds on exact cache inputs.
abstract class VerifyItemPowerAssets : DefaultTask() {
    @get:InputFiles
    @get:PathSensitive(PathSensitivity.RELATIVE)
    abstract val powerAssets: ConfigurableFileCollection

    @TaskAction
    fun verify() {
        val expected = listOf(
            Triple("item_powers_pyarray.bin", 54443L, "bba8cbb48cc3cc3c32b9419bbb709f253c68066500873a9f30f014a94914bc1e"),
            Triple("item_powers_pyarraynames.bin", 23714L, "3e190e2b8a939e086384cffe17ea2fb47c341896b2a81c7c7ecbbf171aafca66"),
            Triple("item_powers_pystructnames.bin", 5747L, "5875d43e74e9802ac3151d943c2458557e2604383db7d658433508718fbad444"),
            Triple("item_powers_monopoly_pyarray.bin", 476L, "6591e5ca591b63d3c81eb0d4d3811a2f8409f4b835cb64f35dde87bee4f63d4b"),
            Triple("item_powers_monopoly_pyarraynames.bin", 1021L, "673773445e377912072230e37ab621ec9b0a20dbdd9782fe6c9930124e107633"),
            Triple("item_powers_monopoly_pystructnames.bin", 20L, "79dab4b044f7f7f614dab597fc280d8d5947b96b3ed672aac1339316ed7d6400"),
        )
        val byName = powerAssets.files.associateBy { it.name }
        for ((name, size, sha256) in expected) {
            val asset = byName[name]
                ?: throw GradleException("Required original item-power asset is missing: $name")
            val actualSha256 = MessageDigest.getInstance("SHA-256")
                .digest(asset.readBytes())
                .joinToString("") { "%02x".format(it.toInt() and 0xff) }
            if (asset.length() != size || actualSha256 != sha256) {
                throw GradleException("Original item-power asset failed size/SHA-256 validation: $name (expected $size/$sha256, found ${asset.length()}/$actualSha256)")
            }
        }
    }
}

val verifyItemPowerAssets = tasks.register<VerifyItemPowerAssets>("verifyItemPowerAssets") {
    powerAssets.from(listOf(
        "item_powers_pyarray.bin",
        "item_powers_pyarraynames.bin",
        "item_powers_pystructnames.bin",
        "item_powers_monopoly_pyarray.bin",
        "item_powers_monopoly_pyarraynames.bin",
        "item_powers_monopoly_pystructnames.bin",
    ).map { layout.projectDirectory.file("src/main/assets/original-cache/data/pydata/$it") })
}

tasks.named("preBuild").configure {
    dependsOn(verifyItemPowerAssets)
}
dependencies {
    implementation(libs.androidx.appcompat)
    implementation(libs.androidx.core.ktx)
    implementation(libs.material)
    testImplementation(libs.junit)
    androidTestImplementation(libs.androidx.espresso.core)
    androidTestImplementation(libs.androidx.junit)
}
