import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'WebpageBrowserApp_1.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'Drawer.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'Drawer.dart';
import 'Search Engine.dart';
import 'web2.dart';
import 'video_cast.dart';

class HomePage2 extends StatelessWidget {
  static String tag = 'home_Page';
  const HomePage2({Key key, @required this.User}) : super(key: key);

  final FirebaseUser User;

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
        tag: 'hero',
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/pics/logo.jpg'),
          ),
        ));
    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Welcome Sir",
        style: TextStyle(fontSize: 28.0, color: Colors.black),
      ),
    );
    final Lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Cinema App is a powerfull app that get arabic,english movies and has a best Browser ... ",
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );
    final Link2 = new Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.redAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 40.0,
          onPressed: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new WebPageOne2()));
          },
          color: Colors.deepOrangeAccent,
          child: Text(
            "Cima",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
    final Link3 = new Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.redAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 40.0,
          onPressed: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new WebPageOne()));
          },
          color: Colors.blueAccent,
          child: Text(
            "visit website cinema now",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
    final Link4 = new Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.redAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 40.0,
          onPressed: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new WebPageOne()));
          },
          color: Colors.blueAccent,
          child: Text(
            "video cast",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
    // final Link =  new InkWell(child: Text("Go to website cinema now",style: TextStyle(color: Colors.blue),),onTap: ()=>launch('https://new.cima-now.com/?fbclid=IwAR0VZO7GdWgtSeiowgdqUSuBl7KEDjJ-8zSautRLcTkUtXSt7UhpBrit6Bs'),);
    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.white, Colors.white],
      )),
      child: Column(
        children: <Widget>[welcome, Lorem, Link2, Link3, Link4],
      ),
    );
    return Scaffold(
      drawer: DrawerOnly(),
      appBar: new AppBar(
        backgroundColor: Colors.red,
      ),
      body: body,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.search,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new WebPagetwo()));
        },
        backgroundColor: Colors.red,
      ),
    );
  }
}
