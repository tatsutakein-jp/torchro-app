import 'package:app_mobile/gen/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// アプリで使用するボトムナビゲーションバー
///
/// home, quest, settingsの3つの画面を保有している
class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.home),
            label: l10n.bottomNavigationBarHome,
          ),
          NavigationDestination(
            icon: const Icon(Icons.hourglass_bottom_outlined),
            label: l10n.bottomNavigationBarTimer,
          ),
          NavigationDestination(
            icon: const Icon(Icons.timer_outlined),
            label: l10n.bottomNavigationBarStopwatch,
          ),
          NavigationDestination(
            icon: const Icon(Icons.miscellaneous_services_outlined),
            label: l10n.bottomNavigationBarMiscellaneous,
          ),
        ],
        onDestinationSelected: (index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
      ),
    );
  }
}
