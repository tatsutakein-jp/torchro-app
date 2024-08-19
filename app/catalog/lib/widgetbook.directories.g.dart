// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_catalog/designsystem/component/scaffold.dart' as _i2;
import 'package:app_catalog/feature/contact/screen/contact_screen.dart' as _i3;
import 'package:app_catalog/feature/home/screen/home_screen.dart' as _i4;
import 'package:app_catalog/feature/miscellaneous/screen/term_screen.dart'
    as _i5;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookCategory(
    name: 'DesignSystem',
    children: [
      _i1.WidgetbookFolder(
        name: 'components',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'TorchroScaffold',
            useCase: _i1.WidgetbookUseCase(
              name: 'TorchroScaffold',
              builder: _i2.torchroScaffoldUseCase,
            ),
          )
        ],
      )
    ],
  ),
  _i1.WidgetbookCategory(
    name: 'Feature',
    children: [
      _i1.WidgetbookFolder(
        name: 'contact',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'ContactScreen',
            useCase: _i1.WidgetbookUseCase(
              name: 'ContactScreen',
              builder: _i3.contactScreenUseCase,
            ),
          )
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'home',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'HomeScreen',
            useCase: _i1.WidgetbookUseCase(
              name: 'HomeScreen',
              builder: _i4.homeScreenUseCase,
            ),
          )
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'miscellaneous',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'TermScreen',
            useCase: _i1.WidgetbookUseCase(
              name: 'TermScreen',
              builder: _i5.termScreenUseCase,
            ),
          )
        ],
      ),
    ],
  ),
];
