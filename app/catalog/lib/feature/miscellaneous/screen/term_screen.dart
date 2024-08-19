import 'package:feature_miscellaneous/feature_miscellaneous.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'TermScreen',
  type: TermScreen,
  path: '[Feature]/miscellaneous',
)
TermScreen termScreenUseCase(BuildContext context) {
  return TermScreen(
    onTapMiscellaneous: () {},
  );
}
