import 'package:flutter/foundation.dart';

import '/backend/sqlite/init.dart';
import 'queries/read.dart';
import 'queries/update.dart';

import 'package:sqflite/sqflite.dart';
export 'queries/read.dart';
export 'queries/update.dart';

class SQLiteManager {
  SQLiteManager._();

  static SQLiteManager? _instance;
  static SQLiteManager get instance => _instance ??= SQLiteManager._();

  static late Database _database;
  Database get database => _database;

  static Future initialize() async {
    if (kIsWeb) {
      return;
    }
    _database = await initializeDatabaseFromDbFile(
      'sync_data',
      'syncData.db',
    );
  }

  /// START READ QUERY CALLS

  Future<List<ListDataRow>> listData() => performListData(
        _database,
      );

  /// END READ QUERY CALLS

  /// START UPDATE QUERY CALLS

  Future createData({
    String? name,
    int? status,
  }) =>
      performCreateData(
        _database,
        name: name,
        status: status,
      );

  Future updateData({
    int? id,
    String? name,
    int? status,
  }) =>
      performUpdateData(
        _database,
        id: id,
        name: name,
        status: status,
      );

  Future deleteData({
    int? id,
  }) =>
      performDeleteData(
        _database,
        id: id,
      );

  /// END UPDATE QUERY CALLS
}
