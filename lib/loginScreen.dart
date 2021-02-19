import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:watch/main.dart';
import 'authentications.dart';

import 'tasks.dart';
import 'signupScreen.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'Drawer.dart';
import 'Search Engine.dart';
import 'Home_Page.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email;
  String password;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void login() {
    if (formkey.currentState.validate()) {
      formkey.currentState.save();
      signin(email, password, context).then((value) {
        if (value != null) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  // builder: (context) => TasksPage(uid: value.uid),
                  builder: (context) => HomePage2()));
        }
      });
    }
  }

  final Color primaryColor = Color(0xff18203d);
  final Color secondaryColor = Color(0xff232c51);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: DrawerOnly(),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/800.png",
                  fit: BoxFit.fill,
                  height: 100.0,
                  // width: 418.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    "Login Here",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Form(
                    key: formkey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: "Email"),
                          validator: MultiValidator([
                            RequiredValidator(
                                errorText: "This Field Is Required"),
                            EmailValidator(errorText: "Invalid Email Address"),
                          ]),
                          onChanged: (val) {
                            email = val;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Password"),
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: "Password Is Required"),
                              MinLengthValidator(6,
                                  errorText: "Minimum 6 Characters Required"),
                            ]),
                            onChanged: (val) {
                              password = val;
                            },
                          ),
                        ),
                        RaisedButton(
                          // passing an additional context parameter to show dialog boxs
                          onPressed: login,
                          color: Colors.green,
                          textColor: Colors.white,
                          child: Text(
                            "Login",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                MaterialButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => googleSignIn().whenComplete(() async {
                    User user = await FirebaseAuth.instance.currentUser;

                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomePage2()));
                  }),
                  child: Image(
                    image: AssetImage('assets/signin.png'),
                    width: 200.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                InkWell(
                  onTap: () {
                    // send to login screen
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignUpScreen()));
                  },
                  child: Text(
                    "Sign Up Here",
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
