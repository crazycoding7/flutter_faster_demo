class Profile {
  String themeSet;
  String languageSet;

  Profile(){}

  Profile.fromJson(Map<String, dynamic> json)
      : themeSet = json['themeSet'],
        languageSet = json['languageSet'];

  Map<String, dynamic> toJson() =>
      <String, dynamic>{'themeSet': themeSet, 'languageSet': languageSet};
}
