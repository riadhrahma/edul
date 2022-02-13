enum Language{
  english
}

Language getLanguage({required String name}) =>
    Language.values.firstWhere((element) => element.name == name);