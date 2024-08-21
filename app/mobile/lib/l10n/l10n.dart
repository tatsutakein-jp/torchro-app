import 'package:app_mobile/gen/l10n/l10n.dart';
import 'package:core_designsystem/l10n.dart';
import 'package:core_ui/l10n.dart';
import 'package:feature_auth/feature_auth.dart';
import 'package:feature_contact/feature_contact.dart';
import 'package:feature_feed/feature_feed.dart';
import 'package:feature_home/feature_home.dart';
import 'package:feature_miscellaneous/feature_miscellaneous.dart';
import 'package:feature_onboarding/feature_onboarding.dart';
import 'package:feature_settings/feature_settings.dart';
import 'package:feature_stopwatch/feature_stopwatch.dart';
import 'package:feature_timer/feature_timer.dart';

const appLocalizationsDelegates = [
  ...L10n.localizationsDelegates,
  ...CoreDesignSystemL10n.localizationsDelegates,
  ...CoreUiL10n.localizationsDelegates,
  ...FeatureAuthL10n.localizationsDelegates,
  ...FeatureContactL10n.localizationsDelegates,
  ...FeatureTimerL10n.localizationsDelegates,
  ...FeatureFeedL10n.localizationsDelegates,
  ...FeatureHomeL10n.localizationsDelegates,
  ...FeatureMiscellaneousL10n.localizationsDelegates,
  ...FeatureOnboardingL10n.localizationsDelegates,
  ...FeatureSettingsL10n.localizationsDelegates,
  ...FeatureStopwatchL10n.localizationsDelegates,
];

const appSupportedLocales = [
  ...L10n.supportedLocales,
  ...CoreDesignSystemL10n.supportedLocales,
  ...CoreUiL10n.supportedLocales,
  ...FeatureAuthL10n.supportedLocales,
  ...FeatureContactL10n.supportedLocales,
  ...FeatureTimerL10n.supportedLocales,
  ...FeatureFeedL10n.supportedLocales,
  ...FeatureHomeL10n.supportedLocales,
  ...FeatureMiscellaneousL10n.supportedLocales,
  ...FeatureOnboardingL10n.supportedLocales,
  ...FeatureSettingsL10n.supportedLocales,
  ...FeatureStopwatchL10n.supportedLocales,
];
