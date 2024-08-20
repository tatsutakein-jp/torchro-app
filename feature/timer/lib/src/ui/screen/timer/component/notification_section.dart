import 'package:core_designsystem/component.dart';
import 'package:feature_timer/src/gen/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class NotificationSection extends HookConsumerWidget {
  const NotificationSection({
    required void Function() onMoreButtonPressed,
    super.key,
  }) : _onMoreButtonPressed = onMoreButtonPressed;

  final VoidCallback _onMoreButtonPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);

    return Container(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              l10n.notification,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Gap(16),
          FilledButton(
            onPressed: _onMoreButtonPressed,
            child: Text(
              l10n.notification,
            ),
          ),
        ],
      ),
    );
  }
}
