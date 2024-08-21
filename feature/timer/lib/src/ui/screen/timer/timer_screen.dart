import 'package:core_designsystem/component.dart';
import 'package:feature_timer/src/gen/l10n/l10n.dart';
import 'package:feature_timer/src/ui/screen/timer/component/notification_section.dart';
import 'package:flutter/material.dart';

/// タイマー画面
final class TimerScreen extends StatelessWidget {
  const TimerScreen({
    required VoidCallback onTapSettings,
    super.key,
  }) : _onTapSettings = onTapSettings;

  final VoidCallback _onTapSettings;

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.timer),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: _onTapSettings,
          ),
        ],
      ),
      body: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          ...[
            SliverList(
              delegate: SliverChildListDelegate([
                NotificationSection(
                  onMoreButtonPressed: () {},
                ),
              ]),
            ),
          ].expand(
            (widget) => [
              widget,
              const SliverGap(8),
            ],
          ),
        ],
      ),
    );
  }
}
