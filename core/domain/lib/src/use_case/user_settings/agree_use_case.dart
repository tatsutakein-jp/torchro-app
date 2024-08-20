import 'package:core_common/anyhow.dart';
import 'package:core_data/user_settings.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'agree_use_case.g.dart';

/// 同意する
@riverpod
Raw<FutureResult<void>> agreeUseCase(AgreeUseCaseRef ref) async {
  return await ref.watch(userSettingsRepositoryProvider).setAgreedAt(
            agreedAt: DateTime.now(),
          )
      ? const Ok(null)
      : Exception('Failed to agree.').toErr();
}
