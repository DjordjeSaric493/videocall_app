import 'package:flutter/material.dart';
import 'package:videocall_app/widgetz/custom_btn.dart';

//za kreiranje stateful widget-a prečica kucaj stf i izaće ti
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //homeScreenBtnTxt,
          const Text(
            'Pokreni ili se pridruži sastanku',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.5), //razmak
            child: Image.asset('assets/onboarding.jpg'),
          ),
          CustomButton(text: 'Prijavi se'),
        ],
      ),
    );
  }
}
