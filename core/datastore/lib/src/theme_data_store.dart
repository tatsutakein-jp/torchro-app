import 'dart:async';

import 'package:core_datastore/src/data_store.dart';
import 'package:core_model/theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_data_store.g.dart';

@riverpod
ThemeDataStore themeDataStore(ThemeDataStoreRef ref) => ThemeDataStore(
      dataStore: ref.watch(dataStoreProvider),
    );

const _key = 'theme';

final class ThemeDataStore {
  ThemeDataStore({
    required this.dataStore,
  }) : _streamController = StreamController<Theme>() {
    final initTheme = get();
    _streamController.add(initTheme);
  }

  final DataStore dataStore;
  final StreamController<Theme> _streamController;

  Stream<Theme> get stream => _streamController.stream;

  Theme get() {
    final theme = dataStore.getString(_key);
    return Theme.values.firstWhere(
      (element) => element.name == theme,
      orElse: () => Theme.system,
    );
  }

  Future<bool> set(Theme theme) async {
    final isSuccess = await dataStore.setString(_key, theme.name);
    if (isSuccess) {
      _streamController.add(theme);
    }
    return isSuccess;
  }

  Future<bool> reset() async {
    final isSuccess = await dataStore.remove(_key);
    if (isSuccess) {
      _streamController.add(Theme.system);
    }
    return isSuccess;
  }
}
