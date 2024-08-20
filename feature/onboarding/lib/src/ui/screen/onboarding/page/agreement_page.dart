import 'package:core_common/anyhow.dart';
import 'package:core_designsystem/component.dart';
import 'package:core_designsystem/space.dart';
import 'package:core_domain/user_settings.dart';
import 'package:feature_onboarding/src/gen/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 同意して始めるページ
final class AgreementPage extends ConsumerWidget {
  const AgreementPage({
    required VoidCallback onAgreeAndContinue,
    super.key,
  }) : _onAgreeAndContinue = onAgreeAndContinue;

  final VoidCallback _onAgreeAndContinue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);

    return Padding(
      padding: const EdgeInsets.all(TorchroSpace.l),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              l10n.agreeAndStart,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Gap(TorchroSpace.m),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: () async {
                switch (await ref.read(agreeUseCaseProvider)) {
                  case Ok():
                    _onAgreeAndContinue();
                  case Err():
                    // TODO: エラー処理
                    break;
                }
              },
              child: Text(l10n.agreeAndStart),
            ),
          ),
        ],
      ),
    );
  }
}
