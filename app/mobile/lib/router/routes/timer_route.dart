part of 'package:app_mobile/router/app_router.dart';

/// タイマー画面のルート
final class TimerRoute extends GoRouteData {
  const TimerRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => TimerScreen(
        onTapSettings: () {},
      );
}
