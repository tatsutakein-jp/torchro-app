import 'package:core_authenticator/authenticator.dart';
import 'package:core_network/src/auth_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_client.g.dart';

@Riverpod(keepAlive: true)
Dio dioClient(DioClientRef ref) {
  final authenticator = ref.watch(authenticatorProvider);

  final dio = Dio(
    BaseOptions(
      // TODO: 環境別にバックエンドの URL を指定できるようにする
      baseUrl: 'http://localhost:8080',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 5),
    ),
  );
  final authInterceptor = AuthInterceptor(dio, authenticator);
  dio.interceptors
    ..add(authInterceptor)
    ..add(
      LogInterceptor(
        responseBody: true,
      ),
    );

  return dio;
}
