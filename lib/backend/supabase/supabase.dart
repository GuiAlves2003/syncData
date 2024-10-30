import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://arvmpwqkmsaoafaphqzk.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFydm1wd3FrbXNhb2FmYXBocXprIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjkwMTM0ODAsImV4cCI6MjA0NDU4OTQ4MH0.Bv2iL1ILgQs4tbULL-Xy_EvGLUil35yysUoXmoZHgDU';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
