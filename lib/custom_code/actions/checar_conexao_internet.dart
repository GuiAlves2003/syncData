// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

// This plugin is using the popular internet_connection_checker_plus
// released under MIT license.
// Copyright 2019 Kristiyan Mitev and Spirit Navigator
// All credits go to them! find the plugin here: https://pub.dev/packages/internet_connection_checker_plus

Future<bool> checarConexaoInternet() async {
  // This returns true if the app is connected to the internet (determined by checking access to certain websites) and false if no internet connection can be established

  bool result = await InternetConnectionCheckerPlus().hasConnection;
  return result;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
