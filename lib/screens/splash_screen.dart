//import 'package:flutter/src/widgets/container.dart';
//import 'dart:js';
//import 'package:path/path.dart as path';

import 'package:expense/pages/loginpage.dart';
import 'package:expense/screens/onboarding_screen.dart';
import 'package:expense/utilities/style.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _home();
  }

  _home() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OnboardingScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //color: Colors.red,
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisSiz: MainAxisAlignment.end,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6.25, top: 0),
                      child: Image.asset(
                        'assets/images/kebs_logo.png',
                        height: 200.08242797851562,
                        width: 182.07777404785156,
                      ),
                    ),
                  ),
                ),
                //SizedBox(height: 80),
                Padding(
                  padding: const EdgeInsets.only(bottom: 28.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Office Management Suite',
                          style: TextStyle(
                              fontFamily: 'Plus Jakarta Sans',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: const Text(
                            'Powered by Kaar Technologies',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                )

                // Stack(children: [
                //   Positioned(

                //     //  bottom: 12,
                //     child: Text(
                //       'Office Management Suite',
                //       style: kTitleStyle,
                //     ),
                //   )
                // ]),
              ]),
        ),
      ),
    );
  }
}
