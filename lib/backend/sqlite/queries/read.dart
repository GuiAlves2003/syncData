import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN LISTDATA
Future<List<ListDataRow>> performListData(
  Database database,
) {
  const query = '''
SELECT * FROM offlineData
''';
  return _readQuery(database, query, (d) => ListDataRow(d));
}

class ListDataRow extends SqliteRow {
  ListDataRow(super.data);

  int get id => data['id'] as int;
  String get name => data['name'] as String;
  int get status => data['status'] as int;
}

/// END LISTDATA
