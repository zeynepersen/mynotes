import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mypersonelnotes/views/home_view.dart';
import 'package:mypersonelnotes/views/login_view.dart';
import 'package:mypersonelnotes/views/register_view.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
    );
  }
}
