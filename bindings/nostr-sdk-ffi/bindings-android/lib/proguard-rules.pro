# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

# for JNA
-dontwarn java.awt.*
-keep class com.sun.jna.* { *; }
-keep class rust.nostr.sdk.* { *; }
-keep class nostr_sdk.** { *; }
-keepclassmembers class * extends rust.nostr.sdk.* { public *; }
-keepclassmembers class * extends nostr_sdk.** { public *; }
-keepclassmembers class * extends com.sun.jna.* { public *; }
