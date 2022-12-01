import 'package:expense/pages/aad_oauth.dart';
import 'package:expense/pages/loginpage.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_walkthrough_screen/flutter_walkthrough_screen.dart';
import 'package:expense/utilities/style.dart';
import 'onboard.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<OnbordingData> list = [
    OnbordingData(
      //image: _imageFile ?? Image.asset('assets/tom.jpg') as ImageProvider,
      image: const AssetImage("assets/images/splash2.png"),

      imageHeight: 200,
      fit: BoxFit.contain,
      titleText: Text("", style: kTitleStyle
          // TextStyle(
          //   fontSize: 48,
          //   fontWeight: FontWeight.bold,
          // ),
          ),

      descText: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Text("Your Office In Your Hands.", style: kTitleStyle),
          const SizedBox(height: 18),
          const Text(
              "Manage all your business process \n          with KEBS seamlessly",
              style: TextStyle(color: Colors.grey, fontSize: 13)),
          // const SizedBox(
          //   height: 20,
          // ),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //       padding:
          //           EdgeInsets.only(top: 13, bottom: 13, left: 20, right: 20),
          //       elevation: 20,
          //       shape: const StadiumBorder(
          //           side: BorderSide(
          //               style: BorderStyle.solid,
          //               color: Colors.redAccent,
          //               width: 2.0)),
          //       backgroundColor: Colors.redAccent),
          //   onPressed: (() {}),
          //   child: const Text('Next'),
          // ),
          // const SizedBox(height: 40),
          // const Text(
          //   "Skip",
          //   style: TextStyle(color: Colors.black, fontFamily: 'Ariel'),
          // )
        ],
      ),
    ),
    OnbordingData(
      //image: _imageFile ?? Image.asset('assets/tom.jpg') as ImageProvider,
      image: const AssetImage("assets/images/splash3.png"),

      imageHeight: 200,
      fit: BoxFit.contain,
      titleText: Text("", style: kTitleStyle
          // TextStyle(
          //   fontSize: 48,
          //   fontWeight: FontWeight.bold,
          // ),
          ),

      descText: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Text("Approval & Notifications", style: kTitleStyle),
          const SizedBox(height: 18),
          const Text(
              "Take decisions on various request you get \n        like timesheet,expense,varience.",
              style: TextStyle(color: Colors.grey, fontSize: 13)),
          // const SizedBox(
          //   height: 20,
          // ),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //       padding:
          //           EdgeInsets.only(top: 13, bottom: 13, left: 20, right: 20),
          //       elevation: 20,
          //       shape: const StadiumBorder(
          //           side: BorderSide(
          //               style: BorderStyle.solid,
          //               color: Colors.redAccent,
          //               width: 2.0)),
          //       backgroundColor: Colors.redAccent),
          //   onPressed: (() {}),
          //   child: const Text('Next'),
          // ),
          // const SizedBox(height: 40),
          // const Text(
          //   "Skip",
          //   style: TextStyle(color: Colors.black, fontFamily: 'Ariel'),
          // )
        ],
      ),
    ),
    OnbordingData(
      //image: _imageFile ?? Image.asset('assets/tom.jpg') as ImageProvider,
      image: const AssetImage("assets/images/splash4.png"),

      imageHeight: 200,
      fit: BoxFit.contain,
      titleText: Text("", style: kTitleStyle
          // TextStyle(
          //   fontSize: 48,
          //   fontWeight: FontWeight.bold,
          // ),
          ),

      descText: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Text("Dashboard & Reports", style: kTitleStyle),
          const SizedBox(height: 18),
          const Text(
              "Know what's happening in your organisation with\n             intuitive reports and dashboards",
              style: TextStyle(color: Colors.grey, fontSize: 13)),
          // const SizedBox(
          //   height: 20,
          // ),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //       padding:
          //           EdgeInsets.only(top: 13, bottom: 13, left: 20, right: 20),
          //       elevation: 20,
          //       shape: const StadiumBorder(
          //           side: BorderSide(
          //               style: BorderStyle.solid,
          //               color: Colors.redAccent,
          //               width: 2.0)),
          //       backgroundColor: Colors.redAccent),
          //   onPressed: (() {}),
          //   child: const Text('Next'),
          // ),
          // const SizedBox(height: 40),
          // const Text(
          //   "Skip",
          //   style: TextStyle(color: Colors.black, fontFamily: 'Ariel'),
          // )
        ],
      ),
    ),

    // OnbordingData(
    //   imageHeight: 180,
    //   fit: BoxFit.contain,
    //   image: const AssetImage("assets/images/splash4.png"),
    //   titleText: const Text(""),
    //   descText: Column(
    //     children: [
    //       const SizedBox(
    //         height: 40,
    //       ),
    //       Text("Dashboard & Reports", style: kTitleStyle),
    //       const SizedBox(height: 15),
    //       const Text(
    //           "Know what's happening in your organisation with\n             intuitive reports and dashboards",
    //           style: TextStyle(color: Colors.grey, fontSize: 13)),
    //       const SizedBox(
    //         height: 20,
    //       ),
    //       // ElevatedButton(
    //       //   style: ElevatedButton.styleFrom(
    //       //       padding: const EdgeInsets.only(
    //       //           top: 13, bottom: 13, left: 20, right: 20),
    //       //       elevation: 20,
    //       //       shape: const StadiumBorder(
    //       //           side: BorderSide(
    //       //               style: BorderStyle.solid,
    //       //               color: Colors.redAccent,
    //       //               width: 2.0)),
    //       //       backgroundColor: Colors.redAccent),
    //       //   // void initState(){

    //       //   //}
    //       //   onPressed: () {
    //       //     // Navigator.push(context,
    //       //     //     MaterialPageRoute(builder: (context) => LoginPage()));

    //       //     @override
    //       //     void initState(BuildContext context) {
    //       //       //Navigator.pushNamed(context, '/login');

    //       //       Navigator.push(context,
    //       //           MaterialPageRoute(builder: (context) => LoginPage()));
    //       //     }
    //       //   },
    //       //   //onPressed: () => Navigator.pushNamed(context, '/login'),
    //       //   child: const Text('Get Started'),
    //       // ),
    //       // const SizedBox(height: 40),
    //     ],
    //   ),
    // ),

    // OnbordingData(
    //   image: AssetImage("assets/images/mis.png"),
    //   titleText: Text("This is Title4"),
    //   descText: Text("This is desc4"),
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    var introScreen = IntroScreen(
      onbordingDataList: list,
      colors: const [
        //list of colors for per pages
        Colors.white,
        Colors.red,
      ],
      gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.white, Colors.white]),
      pageRoute: MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
      nextButton: const Text('Next'),

      // const Text(
      //   "NEXT",
      //   style: TextStyle(
      //       color: Colors.white, fontSize: 17, fontFamily: 'Plus Jakarta Sans'),
      // ),

      // Padding(
      //   padding: const EdgeInsets.only(),
      //   child: CircleAvatar(
      //     child: ElevatedButton(
      //       style: ElevatedButton.styleFrom(
      //           elevation: 20,
      //           shape: const StadiumBorder(
      //               side: BorderSide(
      //                   style: BorderStyle.solid,
      //                   color: Colors.redAccent,
      //                   width: 2.0)),
      //           backgroundColor: Colors.redAccent),
      //       onPressed: (() {}),
      //       child: const Text('Next'),
      //     ),
      //   ),
      // ),
      //     Padding(
      //   padding: const EdgeInsets.only(bottom: 18.0),
      //   child: Center(
      //     child: Container(
      //       child: const Text(
      //         "NEXT",
      //         style: TextStyle(color: Colors.white, fontSize: 13),
      //       ),
      //     ),
      //   ),
      // ),
      lastButton: const Text(
        "Get Started",
        style: TextStyle(color: Colors.white, fontSize: 14),
      ),

      skipButton: const Text(
        "Skip",
        style: TextStyle(
            color: Color.fromARGB(176, 0, 0, 0),
            fontSize: 15,
            fontFamily: 'Plus Jakarta Sans'),
      ),
      selectedDotColor: Colors.redAccent,
      unSelectdDotColor: const Color.fromARGB(152, 158, 158, 158),
    );
    return introScreen;
  }
}
