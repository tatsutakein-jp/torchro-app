import 'package:core_designsystem/component.dart';
import 'package:feature_home/src/gen/l10n/l10n.dart';
import 'package:feature_home/src/ui/screen/home/component/notification_section.dart';
import 'package:flutter/material.dart';

/// ホーム画面
final class HomeScreen extends StatelessWidget {
  const HomeScreen({
    required VoidCallback onTapNotification,
    super.key,
  }) : _onTapNotification = onTapNotification;

  final VoidCallback _onTapNotification;

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.home),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: _onTapNotification,
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
