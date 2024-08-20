/// アプリ内で使用するページのパス
final class AppPagePath {
  static const auth = '/auth';
  static const onboarding = '/onboarding';
  static const home = '/home';
  static const timer = '/timers';
  static const stopwatch = '/stopwatches';
  static const root = '/';
  static const settings = '/settings';
  static const license = 'license';
  static const theme = 'theme';
  static const feeds = '/feeds';
}

/// 同意済みであることが前提のパス
const agreedPaths = [
  AppPagePath.home,
  AppPagePath.timer,
  AppPagePath.stopwatch,
  AppPagePath.settings,
];
