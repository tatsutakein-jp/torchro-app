import 'package:core_designsystem/component.dart';
import 'package:core_designsystem/space.dart';
import 'package:feature_contact/src/gen/l10n/l10n.dart';
import 'package:feature_contact/src/ui/screen/contact/component/contact_form.dart';
import 'package:flutter/material.dart';

/// お問い合わせ画面
final class ContactScreen extends StatelessWidget {
  const ContactScreen({
    required VoidCallback onTapNotification,
    super.key,
  }) : _onTapNotification = onTapNotification;

  final VoidCallback _onTapNotification;

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.contact),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: _onTapNotification,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            ...[
              ContactForm(
                onMoreButtonPressed: () {},
              ),
            ].expand(
              (widget) => [
                widget,
                const Gap(TorchroSpace.s),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
