import 'package:core_designsystem/component.dart';
import 'package:core_designsystem/space.dart';
import 'package:feature_onboarding/src/gen/l10n/l10n.dart';
import 'package:flutter/material.dart';

/// ウェルカムページ
final class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return Padding(
      padding: const EdgeInsets.all(TorchroSpace.l),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              l10n.welcome,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Gap(16),
        ],
      ),
    );
  }
}
