import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'loginScreen.dart';
import 'tasks.dart';
import 'package:firebase_core/firebase_core.dart';
import 'get-started.dart';
import 'Drawer.dart';
import 'package:flutter/services.dart';
import 'Home_Page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    // DeviceOrientation.portraitDown
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
        primarySwatch: Colors.purple,
        accentColor: Colors.purple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<User>(
      initialData: FirebaseAuth.instance.currentUser,
      builder: (context, snapshot) {
        /*  if (snapshot.hasData) {
          User user = snapshot.data;
          return HomePage2();
        } else {
          return Start();
        }*/
        Future loadUser() async {
          User _tempUser = await _auth.currentUser;
          if (_tempUser != null)
            return HomePage2();
          else
            return Start();
        }

        return Start();
      },
    );
  }
}
