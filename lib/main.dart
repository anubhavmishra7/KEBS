//import 'package:expense/screens/loginpage.dart';
//import 'package:expense/pages/dashboard.dart';
//import 'package:expense/pages/aad_oauth.dart';
import 'package:expense/pages/dashboard.dart';
import 'package:expense/pages/homepage.dart';
import 'package:expense/pages/loginpage.dart';
import 'package:expense/screens/splash_screen.dart';
import 'package:flutter/material.dart';

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
      title: 'KEBS',
      theme: ThemeData( 
          // primarySwatch: Colors.rd,
          ),
      home: const SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => const LoginPage()
      },
    );
  }
}
