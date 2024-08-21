import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get timer => 'Timer';

  @override
  String get notification => 'Notification';

  @override
  String get schedule => 'Schedule';

  @override
  String get today => 'Today';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get menu => 'Menu';

  @override
  String get account => 'Account';

  @override
  String get anonymous => 'Anonymous';

  @override
  String get nonSchedule => 'I have no plans for today and tomorrow';
}
