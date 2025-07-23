import 'dart:ui';

// /// Enum without constructor
// enum Language {
//   german,
//   english,
//   french,
//   spanish;

//   String get name => switch (this) {
//         german => "Deutsch",
//         english => "English",
//         french => "Français",
//         spanish => "Español",
//       };

//   Locale get locale => switch (this) {
//         german => const Locale('de', 'DE'),
//         english => const Locale('en', 'US'),
//         french => const Locale('fr', 'FR'),
//         spanish => const Locale('es', 'ES'),
//       };
// }

/// Enum with constructor
enum Language {
  german(name: "Deutsch", locale: Locale('de', 'DE')),
  english(name: "English", locale: Locale('en', 'US')),
  french(name: "Français", locale: Locale('fr', 'FR')),
  spanish(name: "Español", locale: Locale('es', 'ES'));

  const Language({required this.name, required this.locale});

  final String name;
  final Locale locale;
}
