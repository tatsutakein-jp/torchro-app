import 'package:core_authenticator/authenticator.dart';
import 'package:dio/dio.dart';

/// 認証用のInterceptor
class AuthInterceptor extends QueuedInterceptor {
  AuthInterceptor(
    this.dio,
    this.authenticator,
  );

  final Dio dio;
  final Authenticator authenticator;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Authorizationヘッダーが空のときのみ、自動で設定する
    // if (options.headers['Authorization'] ?? true) {
    // }
    final accessToken = await authenticator.idToken;
    options.headers['Authorization'] = 'Bearer $accessToken';

    return handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    // 期限切れの場合は、強制更新してリトライ
    // 条件はステータスコードで判定(仮)
    if (err.response?.statusCode == 401) {
      final newAccessToken = await authenticator.idToken;
      err.requestOptions.headers['Authorization'] = 'Bearer $newAccessToken';
      return handler.resolve(await dio.fetch(err.requestOptions));
    }
    return handler.next(err);
  }
}
