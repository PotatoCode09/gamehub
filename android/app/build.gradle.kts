plugins {
    id("kotlin-android")
    id("com.android.application")
    id("dev.flutter.flutter-gradle-plugin")
    // id("com.google.gms.google-services")
}

android {
    namespace = "com.nietzchan.gamehub"
    ndkVersion = "25.1.8937393"
    compileSdk = 35

    kotlinOptions {
        jvmTarget = "17"
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    defaultConfig {
        applicationId = "com.nietzchan.gamehub"
        minSdk = 23
        targetSdk = 35
        versionCode = 2
        versionName = "GH.010.002"
    }

    signingConfigs {
                create("release") {
            keyAlias = "release"
            keyPassword = "36145278"
            storeFile = file("release-key.jks")
            storePassword = "36145278"
        }
    }

    buildTypes {
        getByName("release") {
            isMinifyEnabled = false
            isShrinkResources = false
            signingConfig = signingConfigs.getByName("release")
            ndk {
                debugSymbolLevel = "SYMBOL_TABLE"
            }
        }
    }

    bundle {
        language {
            enableSplit = false
        }
        density {
            enableSplit = true
        }
        abi {
            enableSplit = true
        }
    }
}

dependencies {
    // implementation(platform("com.google.firebase:firebase-bom:33.13.0"))
    // implementation("com.google.firebase:firebase-analytics")
}

flutter {
    source = "../.."
}
