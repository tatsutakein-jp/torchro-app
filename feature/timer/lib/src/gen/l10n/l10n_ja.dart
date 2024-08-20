import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get timer => 'タイマー';

  @override
  String get notification => 'おしらせ';

  @override
  String get schedule => 'スケジュール';

  @override
  String get today => '今日';

  @override
  String get tomorrow => '明日';

  @override
  String get menu => 'メニュー';

  @override
  String get account => 'アカウント';

  @override
  String get anonymous => '氏名未設定';

  @override
  String get nonSchedule => '本日、明日の予定はありません';
}
