import 'package:dropdownbutton/api/api.dart';
import 'package:dropdownbutton/router.dart';
import 'package:dropdownbutton/screen/register.dart';
import 'package:dropdownbutton/screen/splash.dart';
import 'package:flutter/material.dart';
import 'package:dropdownbutton/pages/root_app.dart';
import 'package:firebase_core/firebase_core.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(new Register());
}
