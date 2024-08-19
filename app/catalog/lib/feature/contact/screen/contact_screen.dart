import 'package:feature_contact/feature_contact.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'ContactScreen',
  type: ContactScreen,
  path: '[Feature]/contact',
)
ContactScreen contactScreenUseCase(BuildContext context) {
  return ContactScreen(
    onTapNotification: () {},
  );
}
