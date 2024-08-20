import 'package:core_designsystem/component.dart';
import 'package:feature_onboarding/src/gen/l10n/l10n.dart';
import 'package:feature_onboarding/src/ui/screen/onboarding/component/notification_section.dart';
import 'package:flutter/material.dart';

/// オンボーディング画面
final class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({
    required VoidCallback onTapNotification,
    super.key,
  }) : _onTapNotification = onTapNotification;

  final VoidCallback _onTapNotification;

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.onboarding),
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
