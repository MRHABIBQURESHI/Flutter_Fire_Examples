import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:nov20/firebase_options.dart';
import 'package:nov20/get_users_view.dart';
import 'package:nov20/save_user_view.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: GetUsersView());
  }
}
