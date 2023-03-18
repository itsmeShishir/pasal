import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../Login/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: Column(
              children: [
                const SizedBox(
                  height: 90,
                ),
                Center(
                  child: Lottie.network(
                    'https://assets5.lottiefiles.com/packages/lf20_bviewtx1.json',
                  ),
                ),
                const Center(
                  child: Text(
                    "Car Parts Nepal",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.red),
                  ),
                )
              ],
            ),
          );
        } else {
          return const LoginScreen();
        }
      },
    );
  }

  Future<void> _getData() async {
    await Future.delayed(const Duration(seconds: 3));
  }
}
