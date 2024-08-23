import 'package:feature_stopwatch/src/gen/l10n/l10n.dart';
import 'package:feature_stopwatch/src/ui/screen/stopwatch/component/stopwatch_content.dart';
import 'package:flutter/material.dart';

/// ストップウォッチ画面
final class StopwatchScreen extends StatelessWidget {
  const StopwatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.stopwatch),
      ),
      body: const SafeArea(
        child: StopwatchContent(),
      ),
    );
  }
}
