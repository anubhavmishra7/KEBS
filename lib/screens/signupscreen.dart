//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: RichText(
        text: TextSpan(
            text: "something",
            style: TextStyle(
                // fontFamily: "Segoe",
                color: Colors.black.withOpacity(0.8),
                fontWeight: FontWeight.bold,
                fontSize: 16),
            children: [
              TextSpan(
                text: " in it",
                style: TextStyle(
                    // fontFamily: "Aramco",
                    color: Colors.black.withOpacity(0.8),
                    fontSize: 16),
              ),
            ]),
      )),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_left_outlined),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
