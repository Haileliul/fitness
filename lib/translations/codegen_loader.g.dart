// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "name": "Hi my name is Haileliul!",
  "age": "I am six years old!",
  "Login": "Login",
  "Email": "Email",
  "SignIn": "Sign In",
  "have_no_account": "Dont have an account?",
  "Sign_up": "Sign Up"
};
static const Map<String,dynamic> am = {
  "name": "ሰላም ሀይሌ እባላለሁ!",
  "age": "ስድስት ዓመቴ ነው!",
  "Login": "መግቢያ ቅጽ",
  "Email": "ኢሜይል",
  "SignIn": "ግባ",
  "have_no_account": "መለያ የለህም?",
  "Sign_up": "ይመዝገቡ"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "am": am};
}
