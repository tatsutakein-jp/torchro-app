import 'dart:async';

import 'package:isar/isar.dart';

final class IsarDatabase {
  IsarDatabase._();

  static final _schemas = <IsarGeneratedSchema>[];

  static Future<Isar> openIsarWeb() async {
    await Isar.initialize();

    return Isar.open(
      schemas: _schemas,
      directory: Isar.sqliteInMemory,
      engine: IsarEngine.sqlite,
    );
  }

  static Future<Isar> openIsarNonWeb({
    required String directory,
  }) async {
    return Isar.openAsync(
      schemas: _schemas,
      directory: directory,
    );
  }
}
