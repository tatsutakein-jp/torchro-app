part of 'package:app_mobile/router/app_router.dart';

/// ストップウォッチ画面のルート
final class StopwatchRoute extends GoRouteData {
  const StopwatchRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const StopwatchScreen();
}
