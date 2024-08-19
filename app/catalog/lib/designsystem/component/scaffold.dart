import 'package:core_designsystem/component.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'TorchroScaffold',
  type: TorchroScaffold,
  path: '[DesignSystem]/components',
)
Widget torchroScaffoldUseCase(BuildContext context) {
  return TorchroScaffold(
    appBar: TorchroAppBar(
      title: Text(
        context.knobs.string(
          label: 'AppBar Title',
          initialValue: 'TorchroScaffold',
        ),
      ),
    ),
    body: Center(
      child: Text(
        context.knobs.string(
          label: 'Body Text',
          initialValue: 'TorchroScaffold',
        ),
      ),
    ),
  );
}
