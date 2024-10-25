// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $appShellRouteData,
      $authRoute,
      $onboardingRoute,
    ];

RouteBase get $appShellRouteData => StatefulShellRouteData.$route(
      factory: $AppShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          navigatorKey: HomeBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/home',
              factory: $HomeRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'feeds',
                  parentNavigatorKey: FeedListRoute.$parentNavigatorKey,
                  factory: $FeedListRouteExtension._fromState,
                  routes: [
                    GoRouteData.$route(
                      path: ':feedId',
                      parentNavigatorKey: FeedDetailRoute.$parentNavigatorKey,
                      factory: $FeedDetailRouteExtension._fromState,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: TimerBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/timers',
              factory: $TimerRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: StopwatchBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/stopwatches',
              factory: $StopwatchRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: SettingsBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/settings',
              factory: $SettingsRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'theme',
                  parentNavigatorKey:
                      ThemeSettingDialogRoute.$parentNavigatorKey,
                  factory: $ThemeSettingDialogRouteExtension._fromState,
                ),
                GoRouteData.$route(
                  path: 'license',
                  parentNavigatorKey: LicenseRoute.$parentNavigatorKey,
                  factory: $LicenseRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
      ],
    );

extension $AppShellRouteDataExtension on AppShellRouteData {
  static AppShellRouteData _fromState(GoRouterState state) =>
      const AppShellRouteData();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FeedListRouteExtension on FeedListRoute {
  static FeedListRoute _fromState(GoRouterState state) => const FeedListRoute();

  String get location => GoRouteData.$location(
        '/home/feeds',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FeedDetailRouteExtension on FeedDetailRoute {
  static FeedDetailRoute _fromState(GoRouterState state) => FeedDetailRoute(
        feedId: state.pathParameters['feedId']!,
      );

  String get location => GoRouteData.$location(
        '/home/feeds/${Uri.encodeComponent(feedId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TimerRouteExtension on TimerRoute {
  static TimerRoute _fromState(GoRouterState state) => const TimerRoute();

  String get location => GoRouteData.$location(
        '/timers',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $StopwatchRouteExtension on StopwatchRoute {
  static StopwatchRoute _fromState(GoRouterState state) =>
      const StopwatchRoute();

  String get location => GoRouteData.$location(
        '/stopwatches',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsRouteExtension on SettingsRoute {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ThemeSettingDialogRouteExtension on ThemeSettingDialogRoute {
  static ThemeSettingDialogRoute _fromState(GoRouterState state) =>
      const ThemeSettingDialogRoute();

  String get location => GoRouteData.$location(
        '/settings/theme',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LicenseRouteExtension on LicenseRoute {
  static LicenseRoute _fromState(GoRouterState state) => const LicenseRoute();

  String get location => GoRouteData.$location(
        '/settings/license',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $authRoute => GoRouteData.$route(
      path: '/auth',
      factory: $AuthRouteExtension._fromState,
    );

extension $AuthRouteExtension on AuthRoute {
  static AuthRoute _fromState(GoRouterState state) => const AuthRoute();

  String get location => GoRouteData.$location(
        '/auth',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $onboardingRoute => GoRouteData.$route(
      path: '/onboarding',
      factory: $OnboardingRouteExtension._fromState,
    );

extension $OnboardingRouteExtension on OnboardingRoute {
  static OnboardingRoute _fromState(GoRouterState state) =>
      const OnboardingRoute();

  String get location => GoRouteData.$location(
        '/onboarding',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerHash() => r'2d5bf597f7fce32b9725c2e0be6866261afbe864';

/// See also [router].
@ProviderFor(router)
final routerProvider = AutoDisposeProvider<GoRouter>.internal(
  router,
  name: r'routerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$routerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RouterRef = AutoDisposeProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
