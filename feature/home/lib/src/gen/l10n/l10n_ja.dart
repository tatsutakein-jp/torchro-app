import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get home => 'ホーム';

  @override
  String get feed => 'おしらせ';

  @override
  String get upgrade => 'アップグレード';

  @override
  String get recent_timer => '直近のタイマー';

  @override
  String get review => 'レビュー';
}
