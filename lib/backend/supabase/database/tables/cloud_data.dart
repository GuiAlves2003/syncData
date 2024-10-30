import '../database.dart';

class CloudDataTable extends SupabaseTable<CloudDataRow> {
  @override
  String get tableName => 'cloudData';

  @override
  CloudDataRow createRow(Map<String, dynamic> data) => CloudDataRow(data);
}

class CloudDataRow extends SupabaseDataRow {
  CloudDataRow(super.data);

  @override
  SupabaseTable get table => CloudDataTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);

  String? get item => getField<String>('item');
  set item(String? value) => setField<String>('item', value);
}
