# Keep classes and methods that have the @UsedForTesting annotation
-keep @helium314.keyboard.annotations.UsedForTesting class *
-keepclassmembers class * {
    @helium314.keyboard.annotations.UsedForTesting *;
}

# Keep classes and methods that have the @ExternallyReferenced annotation
-keep @helium314.keyboard.annotations.ExternallyReferenced class *
-keepclassmembers class * {
    @helium314.keyboard.annotations.ExternallyReferenced *;
}

# Keep native methods
-keepclassmembers class * {
    native <methods>;
}

# Keep classes that are used as a parameter type of methods that are also marked as keep
# to preserve changing those methods' signature.
-keep class helium314.keyboard.latin.Dictionary
-keep class helium314.keyboard.latin.NgramContext
-keep class helium314.keyboard.latin.makedict.ProbabilityInfo
-keep class helium314.keyboard.latin.utils.LanguageModelParam

# after upgrading to gradle 8, stack traces contain "unknown source"
-keepattributes SourceFile,LineNumberTable
-dontobfuscate
