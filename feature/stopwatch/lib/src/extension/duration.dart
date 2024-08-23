extension DurationX on Duration {
  // 時
  int get hours => inHours;

  // 分
  int get minutes => inMinutes.remainder(60);

  // 秒
  int get seconds => inSeconds.remainder(60);

  // ミリ秒
  int get milliseconds => ((inMilliseconds % 1000) / 10).round();
}
