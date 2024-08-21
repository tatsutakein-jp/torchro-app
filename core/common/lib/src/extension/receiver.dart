extension Receiver<T> on T {
  /// インスタンスをクロージャー内の引数で受け取り、新しい処理結果の値を返却する
  ///
  /// ```dart
  /// final String? nullableText = "text";
  /// final text = nullableText?.let((it) => "non-null $it");
  /// print(text); // non-null text
  /// ```
  R let<R>(R Function(T) block) => block(this);
}
