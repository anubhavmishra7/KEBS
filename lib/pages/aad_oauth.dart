import 'package:aad_oauth/aad_oauth.dart';
import 'package:aad_oauth/model/config.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
final navigatorKey = GlobalKey<NavigatorState>();



class Oauth extends StatelessWidget {
  const Oauth({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AAD OAuth Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'AAD OAuth Home'),
      navigatorKey: navigatorKey,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Must configure flutter to start the web server for the app on
  // the port listed below. In VSCode, this can be done with
  // the following run settings in launch.json
  // "args": ["-d", "chrome","--web-port", "8483"]
  static final Config config = Config(
    tenant: '87a25c2a-2cb4-4c40-9cbc-5268c0ed1eeb',
    clientId: 'a6e8463c-c987-41de-bc92-5dced6f40ef5',
    scope: 'https://graph.microsoft.com/.default',
    redirectUri: 'https://kaar.kebs.app/login',
    // kIsWeb
    // ? 'http://localhost:8483'
    // : 'https://login.live.com/oauth20_desktop.srf',
    navigatorKey: navigatorKey,
  );
  final AadOAuth oauth = AadOAuth(config);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              'AzureAD OAuth',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.launch),
            title: const Text('Login'),
            onTap: () {
              login();
            },
          ),
          ListTile(
            leading: const Icon(Icons.delete),
            title: const Text('Logout'),
            onTap: () {
              logout();
            },
          ),
        ],
      ),
    );
  }

  void showError(dynamic ex) {
    showMessage(ex.toString());
  }

  void showMessage(String text) {
    var alert = AlertDialog(content: Text(text), actions: <Widget>[
      TextButton(
          child: const Text('Ok'),
          onPressed: () {
            Navigator.pop(context);
          })
    ]);
    showDialog(context: context, builder: (BuildContext context) => alert);
  }

  void login() async {
    try {
      await oauth.login();
      var accessToken = await oauth.getAccessToken();
      showMessage('Logged in successfully, your access token: $accessToken');
    } catch (e) {
      showError(e);
    }
  }

  void logout() async {
    await oauth.logout();
    showMessage('Logged out');
  }
}
