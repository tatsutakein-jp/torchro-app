import 'package:app_mobile/initializer/app_config_initializer.dart';
import 'package:app_mobile/router/app_navigation_bar.dart';
import 'package:app_mobile/router/app_navigation_key.dart';
import 'package:app_mobile/router/app_page_path.dart';
import 'package:core_domain/user_settings.dart';
import 'package:core_model/config.dart';
import 'package:core_model/feed.dart';
import 'package:feature_auth/feature_auth.dart';
import 'package:feature_feed/feature_feed.dart';
import 'package:feature_home/feature_home.dart';
import 'package:feature_onboarding/feature_onboarding.dart';
import 'package:feature_settings/feature_settings.dart';
import 'package:feature_stopwatch/feature_stopwatch.dart';
import 'package:feature_timer/feature_timer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'app_router.g.dart';
part 'package:app_mobile/router/routes/app_shell_route.dart';
part 'package:app_mobile/router/routes/auth_route.dart';
part 'package:app_mobile/router/routes/feed_route.dart';
part 'package:app_mobile/router/routes/home_route.dart';
part 'package:app_mobile/router/routes/onboarding_route.dart';
part 'package:app_mobile/router/routes/settings_route.dart';
part 'package:app_mobile/router/routes/stopwatch_route.dart';
part 'package:app_mobile/router/routes/timer_route.dart';
part 'package:app_mobile/router/shell_branch/home_branch.dart';
part 'package:app_mobile/router/shell_branch/settings_branch.dart';
part 'package:app_mobile/router/shell_branch/stopwatch_branch.dart';
part 'package:app_mobile/router/shell_branch/timer_branch.dart';

/// ルートナビゲーターのキー
final rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    initialLocation: AppPagePath.home,
    navigatorKey: rootNavigatorKey,
    routes: $appRoutes,
    debugLogDiagnostics: kDebugMode,
    redirect: (context, state) async {
      // 同意が必要なページではない
      if (!agreedPaths.any(
        (path) => path == state.matchedLocation,
      )) {
        return null;
      }

      // 未同意の場合はオンボーディング画面にリダイレクト
      final agreedAt = ref.read(fetchAgreedAtUseCaseProvider);
      if (agreedAt == null) {
        return AppPagePath.onboarding;
      }

      return null;
    },
  );
}
