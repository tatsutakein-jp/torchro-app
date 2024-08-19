import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get close => '閉じる';

  @override
  String get description =>
      'アプリの利用にあたって問題がある場合、以下のフォームより内容を送信することができます。\n送信された内容はサポートチームに共有され、今後のアップデートの参考とさせていただきます。\n問題が発生した画面や手順などを詳細に入力してください。';

  @override
  String get details => '内容';

  @override
  String get failedToSubmit => 'お問い合わせの送信に失敗しました。';

  @override
  String get providingInformation => '情報提供について';

  @override
  String get providingInformationAgreement => '情報提供について同意する';

  @override
  String get providingInformationDescription =>
      'アカウントに登録中のメールアドレスがお問い合わせ内容と併せて送信されます。\n当該メールアドレスは、お問い合わせへの回答目的以外には利用いたしません。';

  @override
  String get successfullySubmitted => 'お問い合わせを送信しました。';

  @override
  String get contact => 'お問い合わせ';
}
