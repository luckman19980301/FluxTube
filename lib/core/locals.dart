import 'package:flutter/widgets.dart';
import 'package:fluxtube/core/model/language_model.dart';

const fallbackLocale = Locale('en');

final supportedLocales = [
  const Locale('en'), // English
  const Locale('ml'), // Malayalam
  const Locale('tr'), //Turkish
  const Locale('ru'), //Russian

// Add more locales as needed
];

final List<LanguageModel> languages = [
  LanguageModel(name: "English", code: "en"),
  LanguageModel(name: "മലയാളം", code: "ml"),
  LanguageModel(name: "Türkçe", code: "tr"),
  LanguageModel(name: "Русский", code: "ru"),
];
