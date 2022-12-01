import 'package:expense/utilities/style.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  //List<String> list = ["Finance", "Account", "Project"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        // primary:

        slivers: <Widget>[
          //Image.asset('assets/images/landing2.png'),
          // SliverGrid(
          //     delegate: SliverChildBuilderDelegate((context, index) {
          //       Container(
          //         color: Colors.yellow,
          //         child: Text(
          //           'Welcome back',
          //           style: kTextStyle,
          //         ),
          //       );
          //     }),
          //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //         maxCrossAxisExtent: 200)
          //         ),
          SliverAppBar(
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  //decoration: BoxDecoration(),
                  child: Image.asset('assets/images/landing1.png'),
                ),
                // IconButton(
                //   onPressed: () {

                //   },

                //   //icon: Icon(Icons.menu),
                //   color: Colors.white,
                // ),
                // SizedBox(
                //   width: 30,
                // ),
                Text(
                  "KEBS",
                  style: kTitleStyle,
                ),
                const SizedBox(
                  width: 85,
                ),
                Container(
                  child: Image.asset('assets/images/search.png'),
                ),
                Container(
                  child: Image.asset('assets/images/doc.png'),
                ),
                Container(
                  child: Image.asset('assets/images/notifi.png'),
                )
              ],
            ),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(20),
                child: Container(
                  //color: Colors.yellow,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  width: double.maxFinite,
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  child: Center(
                      child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(131, 158, 158, 158),
                        borderRadius: BorderRadius.circular(10)),
                    width: 60,
                    height: 7,
                  )),
                )),
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
            backgroundColor: Colors.redAccent,
            pinned: true,
            expandedHeight: 330,
            flexibleSpace: FlexibleSpaceBar(
              // title: Text(
              //   'Portfolio',
              //   style: TextStyle(color: Colors.black),
              // ),
              background: Container(
                color: const Color.fromARGB(175, 255, 82, 82),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        child: Container(
                      width: double.maxFinite,
                      child: Image.asset(
                        'assets/images/landing2.png',
                        width: double.maxFinite,
                        height: double.maxFinite,
                      ),
                    )),
                    Positioned(
                        left: 85,
                        child: Container(
                          child: Image.asset(
                            'assets/images/landing3.png',
                            // width: double.maxFinite,
                            // height: double.maxFinite,
                          ),
                        )),
                    Positioned(
                        top: 100,
                        left: 20,
                        child: Container(
                          child: const Text(
                            'Welcome Back,John!',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )),
                    Positioned(
                        top: 130,
                        left: 20,
                        child: Container(
                          child: const Text(
                            '02 November 2022',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        )),
                    Positioned(
                      // top: 150,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 198.0),
                        child: Row(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(210, 214, 35, 22),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(
                                  child: Text(
                                'Approvals',
                                style: TextStyle(color: Colors.white),
                              )),

                              //color: Colors.yellow,

                              // Padding(
                              //   padding: const EdgeInsets.only(top: 128.0),
                              //   child: Row(
                              //     children: [
                              //       Container(
                              //         decoration: ,
                              //         color: Colors.red,
                              //       )
                              //     ],
                              //   ),
                              //   // child: GridView.builder(
                              //   //   itemCount: list.length,
                              //   //   itemBuilder: (context, index) {
                              //   //     return Card(
                              //   //       color: Colors.red,
                              //   //     );
                              //   //   },
                              //   //   gridDelegate:
                              //   //       SliverGridDelegateWithFixedCrossAxisCount(
                              //   //           crossAxisCount: 3),
                              //   // ),
                              // ),
                            ),
                            Container(
                              child: const Center(
                                  child: Text('Leave\nRequest',
                                      style: TextStyle(color: Colors.white))),
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(210, 214, 35, 22),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              child: const Center(
                                  child: Text('Tasks',
                                      style: TextStyle(color: Colors.white))),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(210, 214, 35, 22),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: _buildContent(),
          ),
        ],
      ),
      floatingActionButton: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 600.0, left: 40),
          child: SizedBox(
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            width: 130,
            child: FloatingActionButton(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              backgroundColor: Colors.redAccent,
              onPressed: () {},
              child: const Text('+ Create'),
            ),
          ),
        ),
      ),
    );
  }

  Center _buildContent() {
    return Center(
        child: Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(35)),
      child: Stack(children: <Widget>[
        Positioned(top: 0, child: Image.asset('assets/images/landing4.png'))
      ]),
    ));
  }
}

// import 'package:expense/pages/homepage.dart';
// import 'package:expense/utilities/appbar.dart';
// import 'package:expense/utilities/style.dart';
// import 'package:flutter/material.dart';

// class Dashboard extends StatefulWidget {
//   const Dashboard({super.key});

//   @override
//   State<Dashboard> createState() => _DashboardState();
// }

// class _DashboardState extends State<Dashboard> {
//   List<String> list = ["Expense", "HR"];
//   int currentIndex = 0;
//   void onTap(int index) {
//     setState(() {
//       currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // appBar: const PreferredSize(
//         //   child: ExpenseAppBar(),
//         //   preferredSize: Size.fromHeight(60),
//         // ),
//         // drawer: const Drawer(
//         //   child: Center(child: Text("Profile")),
//         // ),
//         // bottomNavigationBar: BottomNavigationBar(
//         //     onTap: onTap,
//         //     selectedFontSize: 0,
//         //     unselectedFontSize: 0,
//         //     currentIndex: currentIndex,
//         //     selectedItemColor: Colors.red,
//         //     unselectedItemColor: Colors.grey.shade400,
//         //     type: BottomNavigationBarType.shifting,
//         //     //selectedItemColor: kCupertinoModalBarrierColor,
//         //     backgroundColor: Colors.white24,
//         //     items: const <BottomNavigationBarItem>[
//         //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//         //       BottomNavigationBarItem(
//         //           icon: Icon(Icons.timelapse), label: 'Timesheet'),
//         //       BottomNavigationBarItem(
//         //           icon: Icon(Icons.work_history_outlined), label: 'Project'),
//         //       BottomNavigationBarItem(
//         //           icon: Icon(Icons.settings), label: 'Settings')
//         //     ]),
//         body: CustomScrollView(
//       slivers: [
//         SliverAppBar(
//           expandedHeight: 300,
//           //backgroundColor: Colors.redAccent,
//           flexibleSpace: FlexibleSpaceBar(
//             background: Image.asset(
//               'assets/images/kebs_logo.jpg',
//               width: double.maxFinite,
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//         const SliverToBoxAdapter(
//           child: Text('dfbvdkfbbvjkkvbjv'),
//         )
//       ],
//     )

//         //  SafeArea(
//         //   child: Padding(
//         //     padding: const EdgeInsets.all(8.0),
//         //     child: Container(
//         //       //color: Colors.red,
//         //       child: Row(
//         //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         //         children: <Widget>[
//         //           GestureDetector(
//         //             onTap: () {
//         //               Navigator.push(
//         //                   context,
//         //                   MaterialPageRoute(
//         //                       builder: (context) => const HomePage()));
//         //             },
//         //             child: SizedBox(
//         //               height: 180,
//         //               width: 180,
//         //               child: Card(
//         //                 elevation: 8,
//         //                 shadowColor: Colors.grey,
//         //                 color: Colors.white,

//         //                 child: Column(
//         //                   // mainAxisAlignment: MainAxisAlignment.center,
//         //                   children: <Widget>[
//         //                     Image.asset(
//         //                       'assets/images/time_stats.png',
//         //                       height: 140,
//         //                       width: 75,
//         //                     ),

//         //                     Text(
//         //                       "HR",
//         //                       textAlign: TextAlign.center,
//         //                       style: kTextStyle,
//         //                     ),

//         //                     //Icon(Icons.stop),
//         //                   ],
//         //                 ),

//         //                 // (
//         //                 // GridView.builder(
//         //                 //   itemCount: list.length,
//         //                 //   itemBuilder: ((context, index) {
//         //                 //     return Padding(
//         //                 //       padding: const EdgeInsets.all(5.0),
//         //                 //       child:
//         //                 //       Card(
//         //                 //         color: Colors.white24,

//         //                 //         child: Column(
//         //                 //           // mainAxisAlignment: MainAxisAlignment.center,
//         //                 //           children: <Widget>[
//         //                 //             Image.asset(
//         //                 //               'assets/images/time_stats.png',
//         //                 //               height: 140,
//         //                 //               width: 75,
//         //                 //             ),
//         //                 //             // Text(
//         //                 //             //   list[index],
//         //                 //             //   textAlign: TextAlign.center,
//         //                 //             //   style: const TextStyle(
//         //                 //             //       fontSize: 20,
//         //                 //             //       fontWeight: FontWeight.bold,
//         //                 //             //       color: Colors.black38),
//         //                 //             // ),
//         //                 //             const Text(
//         //                 //               "Expense",
//         //                 //               textAlign: TextAlign.center,
//         //                 //               style: TextStyle(
//         //                 //                   fontSize: 20,
//         //                 //                   fontWeight: FontWeight.bold,
//         //                 //                   color: Colors.black38),
//         //                 //             ),

//         //                 //             //Icon(Icons.stop),
//         //                 //           ],
//         //                 //         ),

//         //                 //         // child: Card(
//         //                 //         //     color: Colors.red,
//         //                 //         //     child: Column(
//         //                 //         //       children: [Icon(Icons.stop), Text(list[index])],
//         //                 //         //     )),
//         //                 //       ),
//         //                 //     );
//         //                 //   }),
//         //                 //   gridDelegate:
//         //                 //       const SliverGridDelegateWithFixedCrossAxisCount(
//         //                 //           crossAxisCount: 2)
//         //                 //           )
//         //               ),
//         //             ),
//         //           ),
//         //           SizedBox(
//         //             height: 180,
//         //             width: 180,
//         //             child: Card(
//         //               elevation: 8,
//         //               shadowColor: Colors.grey,
//         //               color: Colors.white,
//         //               child: Column(
//         //                 // mainAxisAlignment: MainAxisAlignment.center,
//         //                 children: <Widget>[
//         //                   Image.asset(
//         //                     'assets/images/time_stats.png',
//         //                     height: 140,
//         //                     width: 75,
//         //                   ),

//         //                   Text("Expense",
//         //                       textAlign: TextAlign.center, style: kTextStyle),

//         //                   //Icon(Icons.stop),
//         //                 ],
//         //               ),
//         //             ),
//         //           ),
//         //         ],
//         //       ),
//         //     ),
//         //   ),
//         // ),
//         );
//   }
// }
