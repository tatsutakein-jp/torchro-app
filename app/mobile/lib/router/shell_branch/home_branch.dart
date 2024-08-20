part of 'package:app_mobile/router/app_router.dart';

const homeBranch = TypedStatefulShellBranch<HomeBranch>(
  routes: [
    TypedGoRoute<HomeRoute>(
      path: AppPagePath.home,
      routes: [
        TypedGoRoute<FeedListRoute>(
          path: 'feeds',
          routes: [
            TypedGoRoute<FeedDetailRoute>(
              path: ':feedId',
            ),
          ],
        ),
      ],
    ),
  ],
);

// ignore: avoid_classes_with_only_static_members
final class HomeBranch extends StatefulShellBranchData {
  const HomeBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = homeNavigatorKey;
}
