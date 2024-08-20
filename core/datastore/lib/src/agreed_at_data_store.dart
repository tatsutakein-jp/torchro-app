import 'dart:async';

import 'package:core_common/extension.dart';
import 'package:core_datastore/src/data_store.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'agreed_at_data_store.g.dart';

@riverpod
AgreedAtDataStore agreedAtDataStore(AgreedAtDataStoreRef ref) =>
    AgreedAtDataStore(
      dataStore: ref.watch(dataStoreProvider),
    );

const _key = 'agreed_at';

final class AgreedAtDataStore {
  AgreedAtDataStore({
    required this.dataStore,
  }) : _streamController = StreamController<DateTime?>() {
    final initAgreedAt = get();
    _streamController.add(initAgreedAt);
  }

  final DataStore dataStore;
  final StreamController<DateTime?> _streamController;

  Stream<DateTime?> get stream => _streamController.stream;

  DateTime? get() {
    return dataStore.getInt(_key)?.let(DateTime.fromMillisecondsSinceEpoch);
  }

  Future<bool> set(DateTime agreedAt) async {
    final isSuccess =
        await dataStore.setInt(_key, agreedAt.millisecondsSinceEpoch);
    if (isSuccess) {
      _streamController.add(agreedAt);
    }
    return isSuccess;
  }

  Future<bool> reset() async {
    final isSuccess = await dataStore.remove(_key);
    if (isSuccess) {
      _streamController.add(null);
    }
    return isSuccess;
  }
}
