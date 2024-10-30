import 'package:sqflite/sqflite.dart';

/// BEGIN CREATEDATA
Future performCreateData(
  Database database, {
  String? name,
  int? status,
}) {
  final query = '''
INSERT INTO offlineData (id,name,status) VALUES('$name',$status)
''';
  return database.rawQuery(query);
}

/// END CREATEDATA

/// BEGIN UPDATEDATA
Future performUpdateData(
  Database database, {
  int? id,
  String? name,
  int? status,
}) {
  final query = '''
UPDATE offlineData
SET
  name = '$name',
  status = $status
  WHERE id = $id
''';
  return database.rawQuery(query);
}

/// END UPDATEDATA

/// BEGIN DELETEDATA
Future performDeleteData(
  Database database, {
  int? id,
}) {
  final query = '''
DELETE FROM offlineData WHERE id = $id
''';
  return database.rawQuery(query);
}

/// END DELETEDATA
