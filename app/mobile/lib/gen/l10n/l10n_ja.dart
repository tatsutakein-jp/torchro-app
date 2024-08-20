import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get bottomNavigationBarHome => 'ホーム';

  @override
  String get bottomNavigationBarTimer => 'タイマー';

  @override
  String get bottomNavigationBarStopwatch => 'ストップウォッチ';

  @override
  String get bottomNavigationBarMiscellaneous => 'その他';
}
