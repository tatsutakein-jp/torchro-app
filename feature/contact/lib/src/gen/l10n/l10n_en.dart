import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get close => 'Close';

  @override
  String get description =>
      'If you have any problems using this application, you can submit them using the form below.\nYour submission will be shared with our support team and used as reference for future updates.\nPlease provide details of the screen and steps that caused the problem.';

  @override
  String get details => 'Details';

  @override
  String get failedToSubmit => 'Failed to Submit';

  @override
  String get providingInformation => 'About Providing Information';

  @override
  String get providingInformationAgreement => 'I agree to provide information.';

  @override
  String get providingInformationDescription =>
      'The e-mail address registered in your account will be sent together with the content of your inquiry.\nWe will not use this e-mail address for any purpose other than to respond to your inquiry.';

  @override
  String get successfullySubmitted => 'Successfully Submitted!';

  @override
  String get contact => 'Contact';
}
