import 'package:expense/pages/dashboard.dart';
//import 'package:expense/pages/homepage.dart';
import 'package:expense/screens/signupscreen.dart';
import 'package:expense/utilities/expense_button.dart';
import 'package:expense/utilities/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passController = TextEditingController();
    String uname = "kebs";
    String pass = "123";

    return Scaffold(
      backgroundColor: Colors.white,
      // navigationBar: const CupertinoNavigationBar(
      //   automaticallyImplyLeading: false,
      // ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 65,
                ),
                Image.asset(
                  "assets/images/splash5.png",
                  height: 200,
                ),
                const SizedBox(
                  height: 40,
                ),
                Text("Welcome to KEBS!", style: kTitleStyle),
                const SizedBox(height: 18),
                const Text(
                    "Manage tasks,delegate jobs\n       business clutter-free",
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 60,
                  width: 260,
                  child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(

                          //backgroundColor: Colors.white,

                          ),
                      child: Row(
                        children: [
                          Image.asset('assets/images/o365.png'),
                          const Text(
                            ' Sign in with Office 365',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Plus Jakarta Sans'),
                          ),
                        ],
                      )),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text("Or, Sign in with your Email ID",
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
                const SizedBox(
                  height: 25,
                ),
                const SizedBox(
                  height: 60,
                  width: 260,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "name@example.com"),
                  ),

                  // child: OutlinedButton(
                  //     onPressed: () {},

                  //     child:
                  //     style: OutlinedButton.styleFrom(

                  //         //backgroundColor: Colors.white,

                  //         )),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 50,
                  width: 260,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Dashboard()));
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11)),
                        backgroundColor: Colors.redAccent,
                      )),
                ),
                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //       elevation: 20,
                //       shape: const ,
                //       backgroundColor: Colors.redAccent),
                //   onPressed: () {
                //     // Navigator.push(
                //     //    context,
                //     //     MaterialPageRoute(
                //     //         builder: (context) => LoginPage()));
                //   },
                //   // onPressed: () => Navigator.pushNamed(context, '/login'),
                //   child: const Text('Sing In'),
                // ),
                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //       padding: const EdgeInsets.only(
                //           top: 13, bottom: 13, left: 20, right: 20),
                //       elevation: 20,
                //       shape: const StadiumBorder(
                //           side: BorderSide(
                //               style: BorderStyle.solid,
                //               color: Colors.redAccent,
                //               width: 2.0)),
                //       backgroundColor: Colors.redAccent),
                //   onPressed: () {
                //     // Navigator.push(
                //     //    context,
                //     //     MaterialPageRoute(
                //     //         builder: (context) => LoginPage()));
                //   },
                //   // onPressed: () => Navigator.pushNamed(context, '/login'),
                //   child: const Text('Get Started'),
                // ),
                const SizedBox(height: 40),
              ],
            ),
          ),
          //  ListView(
          //   restorationId: 'text_field_demo_list_view',
          //   padding: const EdgeInsets.all(16),
          //   children: [
          //     Padding(
          //         padding: const EdgeInsets.symmetric(vertical: 10),
          //         child: Image.asset(
          //           "assets/images/splash5.png",
          //           height: 200,
          //         )),

          //     Padding(
          //       padding: const EdgeInsets.symmetric(vertical: 18),
          //       child: CupertinoTextField(
          //         controller: emailController,
          //         textInputAction: TextInputAction.next,
          //         restorationId: 'email_address_text_field',
          //         placeholder: "Email",
          //         keyboardType: TextInputType.emailAddress,
          //         clearButtonMode: OverlayVisibilityMode.editing,
          //         autocorrect: false,
          //         // onChanged: ((value) {
          //         //   email = value;
          //         // }),
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.symmetric(vertical: 25),
          //       child: CupertinoTextField(
          //         controller: passController,
          //         textInputAction: TextInputAction.next,
          //         restorationId: 'login_password_text_field',
          //         placeholder: "Password",
          //         clearButtonMode: OverlayVisibilityMode.editing,
          //         obscureText: true,
          //         autocorrect: false,
          //         // onChanged: ((value) {
          //         //   password = value;
          //         // }),
          //       ),
          //     ),
          //     Padding(
          //         padding: const EdgeInsets.all(30),
          //         child: ExpenseButton(
          //             onPressed: () {
          //               if (uname == emailController.text &&
          //                   pass == passController.text) {
          //                 Fluttertoast.showToast(msg: "Login Successful");
          //                 // Navigator.of(context).pop();
          //                 Navigator.push(
          //                     context,
          //                     MaterialPageRoute(
          //                         builder: (context) => const Dashboard()));
          //               } else {
          //                 Fluttertoast.showToast(
          //                     msg: "Invalid Username or password");
          //                 emailController.text = "";
          //                 passController.text = "";
          //               }
          //             },
          //             text: 'SignIn',
          //             width: 20)
          //         // ElevatedButton(
          //         //     style: ElevatedButton.styleFrom(
          //         //         backgroundColor: Colors.red,
          //         //         fixedSize: const Size(10, 50),
          //         //         shape: RoundedRectangleBorder(
          //         //             borderRadius: BorderRadius.circular(25))),
          //         //     onPressed: () {
          //         //       if (uname == emailController.text &&
          //         //           pass == passController.text) {
          //         //         Fluttertoast.showToast(msg: "Login Successful");
          //         //         // Navigator.of(context).pop();
          //         //         Navigator.push(
          //         //             context,
          //         //             MaterialPageRoute(
          //         //                 builder: (context) => const Dashboard()));
          //         //       } else {
          //         //         Fluttertoast.showToast(
          //         //             msg: "Invalid Username or password");
          //         //         emailController.text = "";
          //         //         passController.text = "";
          //         //       }
          //         //       // setState(() {
          //         //       //   _isLoading = true;
          //         //       // });
          //         //       // signup();
          //         //       // signup(emailController.text.toString(),
          //         //       //     passwordController.text.toString(), context);
          //         //       // print(email);
          //         //       // print(password);
          //         //     },
          //         //     child: const Text("SignIn")
          //         //     )
          //         ),
          //     //OutlinedButton(onPressed: () {}, child: Text("heheh")),

          //     Padding(
          //       padding: const EdgeInsets.fromLTRB(70, 0, 70, 70),
          //       child: TextButton(
          //           // style: TextButton.styleFrom(maximumSize: Size.fromWidth(4)),
          //           onPressed: () {
          //             Navigator.of(context).push(MaterialPageRoute(
          //                 builder: (context) => const Signup()));
          //           },
          //           child: const Text(
          //             "New User?SignUp",
          //             style: TextStyle(
          //               color: Colors.blue,
          //             ),
          //           )),
          //     ),
          //     //ListView.builder(itemBuilder: itemBuilder)
          //   ],
        ),
      ),
    );
  }
}
