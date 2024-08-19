part of 'package:app_mobile/router/app_router.dart';

/// ホームページへのルート
final class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => HomeScreen(
        onTapNotification: () {
          const FeedListRoute().go(context);
        },
      );
}
