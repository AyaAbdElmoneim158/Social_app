import 'package:flutter/material.dart';
import 'package:social_app/widgets/back_app_bar.dart';
import 'package:social_app/widgets/my_button.dart';
import 'package:social_app/widgets/my_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const BackAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 180,
              child: Image.asset('images/logo.png'),
            ),
            const SizedBox(height: 50),
            const MyTextField(hintText: "Enter your Email"),
            const SizedBox(height: 8),
            const MyTextField(hintText: "Enter your Password"),
            const SizedBox(height: 10),
            MyButton(
                color: const Color(0xffF0672B),
                title: 'Login',
                onPressed: () => Navigator.pushNamed(context, "chat_screen"))
          ],
        ),
      ),
    );
  }
}
