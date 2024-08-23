extension IntX on int {
  // 0 埋めしたテキストを返す
  String get zeroPad => toString().padLeft(2, '0');
}
