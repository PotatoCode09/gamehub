# Flutter wrapper
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.**  { *; }
-keep class io.flutter.util.**  { *; }
-keep class io.flutter.view.**  { *; }
-keep class io.flutter.**  { *; }
-keep class io.flutter.plugins.**  { *; }

# Keep Flutter embedding
-keep class io.flutter.embedding.** { *; }

# SQLite
-keep class org.sqlite.** { *; }
-keep class org.sqlite.database.** { *; }

# HTTP
-keepclassmembers class * {
    @retrofit2.http.* <methods>;
}

# Keep Dart/Flutter native code
-keep class ** implements io.flutter.plugin.common.MethodCallHandler { *; }
-keep class ** implements io.flutter.plugin.common.StreamHandler { *; }

# Keep native methods
-keepclasseswithmembernames class * {
    native <methods>;
}

# Keep model classes (assuming they might be serialized)
-keep class com.nietzchan.gamehub.models.** { *; }

# General Android rules
-keepattributes *Annotation*
-keepattributes Signature
-keepattributes InnerClasses
-keepattributes EnclosingMethod

# Keep Parcelable classes
-keep class * implements android.os.Parcelable {
    public static final ** CREATOR;
}

# Gson (if using JSON serialization)
-keepattributes Signature
-keepattributes *Annotation*
-keep class sun.misc.Unsafe { *; }
-keep class com.google.gson.stream.** { *; }

# Sqflite specific rules
-keep class com.tekartik.sqflite.** { *; }
-keep class org.sqlite.** { *; }

# Package info plus
-keep class io.flutter.plugins.packageinfoplus.** { *; }

# Wakelock plus
-keep class dev.fluttercommunity.plus.wakelock.** { *; }

# Path provider
-keep class io.flutter.plugins.pathprovider.** { *; }

# HTTP plugin
-keep class io.flutter.plugins.urllauncher.** { *; }

# Toast plugin
-keep class io.github.ponnamkarthik.toast.** { *; }

# Provider state management
-keep class ** extends androidx.lifecycle.ViewModel { *; }
