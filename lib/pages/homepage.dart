import 'package:expense/utilities/appbar.dart';
import 'package:expense/utilities/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool typing = false;
  List<String> list = ["Finance", "Account", "Project", "Analytics", "Payroll"];

  List<String> foundList = [];

  @override
  void initState() {
    super.initState();
    foundList.addAll(list);
  }

  void runSearchFilter(String enteredText) {
    var results = List.filled(0, "0", growable: true);
    if (enteredText.isEmpty) {
      results = list;
    } else {
      results = list
          .where((category) =>
              category.toLowerCase().contains(enteredText.toLowerCase()))
          .toList();
    }
    setState(() {
      foundList = results;
    });
    //   setState(
    //   foundList= results;
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: ExpenseAppBar(),
        ),
        //  AppBar(
        //   title: const Text('KEBS'),
        //   centerTitle: true,
        //   actions: const [Icon(Icons.notifications)],
        //   // title: typing
        //   //     ? TextField(
        //   //         autofocus: true,
        //   //         onChanged: (val) {
        //   //           runSearchFilter(val);
        //   //         },
        //   //       )
        //   //     : Text('Homepage'),
        //   // //centerTitle: true,
        //   // actions: [
        //   //   IconButton(
        //   //       onPressed: () {
        //   //         setState(() {
        //   //           typing = !typing;
        //   //         });
        //   //       },
        //   //       icon: Icon(Icons.search))
        //   // ],
        // ),
        drawer: Drawer(
          child: ListView(
            // separatorBuilder: (context, index) => Divider(color:Colors.black),
            // padding: EdgeInsets.zero,
            // itemBuilder: (context, index) => const Padding(padding: EdgeInsets.all(10),child: Center(
            //   child: Text("hehe"),

            // ),),
            children: [
              DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      'KEBS',
                      textAlign: TextAlign.center,
                      style: kTitleStyle,
                    ),
                  )),
              ListTile(
                title: const Text('Project'),
                onTap: () {
                  // Navigator.of(context).pop();
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => const Project()));
                },
              ),
              ListTile(
                title: const Text('Timesheet'),
                onTap: () {},
              ),
              ListTile(
                iconColor: Colors.red,
                title: const Text('Report'),
                onTap: () {},
              ),
            ],
          ),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //     type: BottomNavigationBarType.fixed,
        //     //selectedItemColor: kCupertinoModalBarrierColor,
        //     backgroundColor: Colors.white12,
        //     items: const <BottomNavigationBarItem>[
        //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.timelapse), label: 'Timesheet'),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.work_history_outlined), label: 'Project'),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.settings), label: 'Settings')
        //     ]),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CupertinoSearchTextField(
                  autofocus: true,
                  onTap: () {
                    setState(() {
                      typing = !typing;
                    });
                  },
                  onChanged: ((val) {
                    runSearchFilter(val);
                  }),
                ),
              ),
              SizedBox(
                height: 500,
                child: (GridView.builder(
                    itemCount: foundList.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Card(
                          elevation: 5,
                          shadowColor: Colors.grey,
                          color: Colors.white,
                          // child: Container(
                          //   child: Column(
                          //     children: <Widget>[
                          //       Image.asset(
                          //         'assets/images/mis.png',
                          //         height: 70,
                          //         width: 70,
                          //       ),
                          //       Text(list[index])
                          //     ],
                          //   ),
                          // ),

                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/time_stats.png',
                                height: 80,
                                width: 75,
                              ),
                              Text(
                                foundList[index],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 14,
                                    //fontWeight: FontWeight.bold,
                                    color: Colors.black38),
                              ),

                              //Icon(Icons.stop),
                            ],
                          ),

                          // child: Card(
                          //     color: Colors.red,
                          //     child: Column(
                          //       children: [Icon(Icons.stop), Text(list[index])],
                          //     )),
                        ),
                      );
                    }),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3))),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Back to Dashboard'))
            ],
          ),
        ));
  }
}
