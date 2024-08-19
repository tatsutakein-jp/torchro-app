import 'package:app_catalog/l10n/l10n.dart';
import 'package:app_catalog/widgetbook.directories.g.dart';
import 'package:core_designsystem/theme.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      initialRoute: '?path=feature/home/homescreen/homescreen',
      // Use the generated directories variable
      directories: directories,
      addons: <WidgetbookAddon>[
        DeviceFrameAddon(
          initialDevice: Devices.ios.iPhone13,
          devices: [
            Devices.ios.iPhoneSE,
            Devices.ios.iPhone13,
            Devices.ios.iPad,
            Devices.android.smallPhone.copyWith(
              name: 'small Android phone',
            ),
            Devices.android.mediumPhone.copyWith(
              name: 'medium Android phone',
            ),
            Devices.android.largeTablet.copyWith(
              name: 'large Android tablet',
            ),
          ],
        ),
        InspectorAddon(enabled: true),
        MaterialThemeAddon(
          themes: <WidgetbookTheme<ThemeData>>[
            WidgetbookTheme<ThemeData>(
              name: 'Light',
              data: lightTheme(null),
            ),
            WidgetbookTheme<ThemeData>(
              name: 'Dark',
              data: darkTheme(null),
            ),
          ],
        ),
        LocalizationAddon(
          localizationsDelegates: appLocalizationsDelegates,
          locales: appSupportedLocales.toSet().toList(),
          initialLocale: appSupportedLocales.first,
        ),
        TextScaleAddon(
          scales: [1.0, 1.25, 1.5, 1.75, 2.0],
        ),
      ],
      integrations: [
        // To make addons & knobs work with Widgetbook Cloud
        WidgetbookCloudIntegration(),
      ],
    );
  }
}
