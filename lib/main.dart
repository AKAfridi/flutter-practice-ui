import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:multi_role_app/screens/auth_ui/login/login_screen.dart';
import 'package:multi_role_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
  debugPaintSizeEnabled = true;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SplashScreen(),
    );
  }
}
