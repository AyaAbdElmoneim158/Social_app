import 'package:flutter/material.dart';
import 'package:social_app/screens/chat_screen.dart';
import 'package:social_app/screens/login_screen.dart';
import 'package:social_app/screens/register_screen.dart';
import 'package:social_app/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social App',
      home: const WelcomeScreen(),
      routes: {
        "welcome_screen": (context) => const WelcomeScreen(),
        "login_screen": (context) => const LoginScreen(),
        "register_screen": (context) => const RegistrationScreen(),
        "chat_screen": (context) => const ChatScreen()
      },
    );
  }
}
