import 'package:cardify/authscreen.dart';
import 'package:cardify/components/Layout.dart';
import 'package:flutter/material.dart';
import 'package:cardify/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login screen',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      initialRoute: '/home', // Set the initial route to the login screen
      routes: {
        '/': (context) => const LoginScreen(),
        '/auth': (context) => const AuthScreen(), // Route for the login screen
        '/home': (context) => const Layout(),
      },
    );
  }
}
