import 'package:flutter/material.dart';
import 'package:flutter_lessons/screens/screens.dart';

void main() => runApp(const LessonsApp());

class LessonsApp extends StatelessWidget {
  const LessonsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lessons App',
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/counter': (context) => const CounterScreen(),
      },
    );
  }
}
