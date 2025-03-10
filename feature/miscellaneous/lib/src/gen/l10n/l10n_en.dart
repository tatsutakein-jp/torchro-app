import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get term => 'Term';

  @override
  String get privacy => 'Privacy policy';

  @override
  String get agree => 'Agree';

  @override
  String get disagree => 'Disagree';
}
