import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get bottomNavigationBarHome => 'Home';

  @override
  String get bottomNavigationBarTimer => 'Timer';

  @override
  String get bottomNavigationBarStopwatch => 'Stopwatch';

  @override
  String get bottomNavigationBarMiscellaneous => 'Miscellaneous';
}
