part of 'package:app_mobile/router/app_router.dart';

const stopwatchBranch = TypedStatefulShellBranch<StopwatchBranch>(
  routes: [
    TypedGoRoute<StopwatchRoute>(
      path: AppPagePath.stopwatch,
    ),
  ],
);

// ignore: avoid_classes_with_only_static_members
final class StopwatchBranch extends StatefulShellBranchData {
  const StopwatchBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = stopwatchNavigatorKey;
}
