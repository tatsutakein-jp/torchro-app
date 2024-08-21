import 'package:core_data/user_settings.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_agreed_at_use_case.g.dart';

/// 同意日時を取得する
@riverpod
DateTime? fetchAgreedAtUseCase(FetchAgreedAtUseCaseRef ref) =>
    ref.watch(userSettingsRepositoryProvider).agreedAt;
