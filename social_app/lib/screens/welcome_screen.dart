import 'package:flutter/material.dart';
import 'package:social_app/widgets/my_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 180,
                  child: Image.asset('images/logo.png'),
                ),
                const Text(
                  'MessageMe',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff2e386b),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            //
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: MyButton(
                    color: const Color(0xffF0672B),
                    title: 'Sign in',
                    onPressed: () {},
                  ),
                ),
                const Expanded(flex: 2, child: SizedBox()),
                Expanded(
                  flex: 5,
                  child: MyButton(
                    color: const Color(0xfff5b228),
                    title: 'register',
                    onPressed: () {},
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
