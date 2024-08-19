import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get term => '利用規約';

  @override
  String get privacy => 'プライバシーポリシー';

  @override
  String get agree => '同意する';

  @override
  String get disagree => '同意しない';
}
