import 'dart:async';

import 'package:core_datastore/agreed_at_data_store.dart';
import 'package:core_datastore/theme_data_store.dart';
import 'package:core_model/theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_settings_repository.g.dart';

@riverpod
UserSettingsRepository userSettingsRepository(UserSettingsRepositoryRef ref) =>
    UserSettingsRepository(
      agreedAtDataStore: ref.watch(agreedAtDataStoreProvider),
      themeDataStore: ref.watch(themeDataStoreProvider),
    );

/// ユーザー設定のリポジトリ
class UserSettingsRepository {
  UserSettingsRepository({
    required AgreedAtDataStore agreedAtDataStore,
    required ThemeDataStore themeDataStore,
  })  : _agreedAtDataStore = agreedAtDataStore,
        _themeDataStore = themeDataStore;

  final AgreedAtDataStore _agreedAtDataStore;
  final ThemeDataStore _themeDataStore;

  Stream<DateTime?> get agreedAtStream => _agreedAtDataStore.stream;

  DateTime? get agreedAt => _agreedAtDataStore.get();

  Future<bool> setAgreedAt({required DateTime agreedAt}) async =>
      _agreedAtDataStore.set(agreedAt);

  Stream<Theme> get themeStream => _themeDataStore.stream;

  Theme get theme => _themeDataStore.get();

  Future<bool> setTheme({required Theme theme}) async =>
      _themeDataStore.set(theme);
}
