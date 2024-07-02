import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/screens/home_screen.dart';
import 'package:food_delivery/screens/login_screen.dart';

class CheckLoginLogout extends StatefulWidget {
  const CheckLoginLogout({super.key});

  @override
  State<CheckLoginLogout> createState() => _CheckLoginLogoutState();
}

class _CheckLoginLogoutState extends State<CheckLoginLogout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //user is logged in
          if (snapshot.hasData) {
            return const HomeScreen();
          }
          //user is not logged in
          else {
            return const LoginScreen();
          }
        },
      ),
    );
  }
}
