import 'package:core_designsystem/component.dart';
import 'package:core_designsystem/space.dart';
import 'package:feature_home/src/gen/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class ReviewSection extends HookConsumerWidget {
  const ReviewSection({
    required void Function() onMoreButtonPressed,
    super.key,
  }) : _onMoreButtonPressed = onMoreButtonPressed;

  final VoidCallback _onMoreButtonPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);

    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(l10n.review),
        ),
        const Gap(TorchroSpace.m),
        FilledButton(
          onPressed: _onMoreButtonPressed,
          child: Text(
            l10n.review,
          ),
        ),
      ],
    );
  }
}
