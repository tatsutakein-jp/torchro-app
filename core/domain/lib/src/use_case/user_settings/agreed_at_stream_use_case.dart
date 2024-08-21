import 'package:core_data/user_settings.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'agreed_at_stream_use_case.g.dart';

/// 同意日時のストリームを取得する
@riverpod
Stream<DateTime?> agreedAtStreamUseCase(AgreedAtStreamUseCaseRef ref) =>
    ref.watch(userSettingsRepositoryProvider).agreedAtStream;
