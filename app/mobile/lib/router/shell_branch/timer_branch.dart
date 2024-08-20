part of 'package:app_mobile/router/app_router.dart';

const timerBranch = TypedStatefulShellBranch<TimerBranch>(
  routes: [
    TypedGoRoute<TimerRoute>(
      path: AppPagePath.timer,
    ),
  ],
);

// ignore: avoid_classes_with_only_static_members
final class TimerBranch extends StatefulShellBranchData {
  const TimerBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = timerNavigatorKey;
}
