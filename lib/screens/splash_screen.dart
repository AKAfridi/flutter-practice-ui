import 'dart:async';

import 'package:flutter/material.dart';
import 'package:multi_role_app/screens/home_page/home_screen.dart';
import 'package:multi_role_app/screens/auth_ui/login/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      islogIN();
    });
  }

  void islogIN() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool isLogIN = sp.getBool('isLogin') ?? false;
    if (isLogIN) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LogInScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Image(
        fit: BoxFit.fitHeight,
        height: double.infinity,
        image: NetworkImage(
            'https://images.pexels.com/photos/3937174/pexels-photo-3937174.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
      ),
    );
  }
}
