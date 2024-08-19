import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'l10n_en.dart';
import 'l10n_ja.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of L10n
/// returned by `L10n.of(context)`.
///
/// Applications need to include `L10n.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/l10n.dart';
///
/// return MaterialApp(
///   localizationsDelegates: L10n.localizationsDelegates,
///   supportedLocales: L10n.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the L10n.supportedLocales
/// property.
abstract class L10n {
  L10n(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static L10n of(BuildContext context) {
    return Localizations.of<L10n>(context, L10n)!;
  }

  static const LocalizationsDelegate<L10n> delegate = _L10nDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ja'),
    Locale('en')
  ];

  /// No description provided for @close.
  ///
  /// In ja, this message translates to:
  /// **'閉じる'**
  String get close;

  /// No description provided for @description.
  ///
  /// In ja, this message translates to:
  /// **'アプリの利用にあたって問題がある場合、以下のフォームより内容を送信することができます。\n送信された内容はサポートチームに共有され、今後のアップデートの参考とさせていただきます。\n問題が発生した画面や手順などを詳細に入力してください。'**
  String get description;

  /// No description provided for @details.
  ///
  /// In ja, this message translates to:
  /// **'内容'**
  String get details;

  /// No description provided for @failedToSubmit.
  ///
  /// In ja, this message translates to:
  /// **'お問い合わせの送信に失敗しました。'**
  String get failedToSubmit;

  /// No description provided for @providingInformation.
  ///
  /// In ja, this message translates to:
  /// **'情報提供について'**
  String get providingInformation;

  /// No description provided for @providingInformationAgreement.
  ///
  /// In ja, this message translates to:
  /// **'情報提供について同意する'**
  String get providingInformationAgreement;

  /// No description provided for @providingInformationDescription.
  ///
  /// In ja, this message translates to:
  /// **'アカウントに登録中のメールアドレスがお問い合わせ内容と併せて送信されます。\n当該メールアドレスは、お問い合わせへの回答目的以外には利用いたしません。'**
  String get providingInformationDescription;

  /// No description provided for @successfullySubmitted.
  ///
  /// In ja, this message translates to:
  /// **'お問い合わせを送信しました。'**
  String get successfullySubmitted;

  /// No description provided for @contact.
  ///
  /// In ja, this message translates to:
  /// **'お問い合わせ'**
  String get contact;
}

class _L10nDelegate extends LocalizationsDelegate<L10n> {
  const _L10nDelegate();

  @override
  Future<L10n> load(Locale locale) {
    return SynchronousFuture<L10n>(lookupL10n(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ja'].contains(locale.languageCode);

  @override
  bool shouldReload(_L10nDelegate old) => false;
}

L10n lookupL10n(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return L10nEn();
    case 'ja':
      return L10nJa();
  }

  throw FlutterError(
      'L10n.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
