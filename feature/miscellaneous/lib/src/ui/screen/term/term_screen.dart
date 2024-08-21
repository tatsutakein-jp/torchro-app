import 'package:feature_miscellaneous/src/gen/l10n/l10n.dart';
import 'package:flutter/material.dart';

/// 利用規約画面
final class TermScreen extends StatelessWidget {
  const TermScreen({
    required VoidCallback onTapMiscellaneous,
    super.key,
  }) : _onTapMiscellaneous = onTapMiscellaneous;

  final VoidCallback _onTapMiscellaneous;

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.term),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: _onTapMiscellaneous,
          ),
        ],
      ),
      body: SafeArea(
        child: Text(
          l10n.term,
        ),
      ),
    );
  }
}
