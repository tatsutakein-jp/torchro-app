import 'package:core_designsystem/l10n.dart';
import 'package:core_ui/l10n.dart';
import 'package:feature_contact/feature_contact.dart';
import 'package:feature_home/feature_home.dart';
import 'package:feature_miscellaneous/feature_miscellaneous.dart';

const appLocalizationsDelegates = [
  ...CoreDesignSystemL10n.localizationsDelegates,
  ...CoreUiL10n.localizationsDelegates,
  ...FeatureContactL10n.localizationsDelegates,
  ...FeatureHomeL10n.localizationsDelegates,
  ...FeatureMiscellaneousL10n.localizationsDelegates,
];

const appSupportedLocales = [
  ...CoreDesignSystemL10n.supportedLocales,
  ...CoreUiL10n.supportedLocales,
  ...FeatureContactL10n.supportedLocales,
  ...FeatureHomeL10n.supportedLocales,
  ...FeatureMiscellaneousL10n.supportedLocales,
];
