import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Contact"),
      ),
      body: Center(
          child: new Text(
              "Today UI with the visual representation of a cinema hall gains more and more popularity. This type allows users to see exactly where the seats are located and make a proper choice.")),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("About"),
      ),
      body: Center(
          child: new Text(
              "The checkout screen usually includes a form where a buyer fills in a specific personal data such as a name and a number of the credit card. As we said above, if users of a cinema app have their personal profiles, a personal information can be taken from there automatically.")),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("News"),
      ),
      body: Center(
          child: new Text(
              "Cinema APK rose tremendously due to the quick availability of the latest content and great customer service. As of now, Cinema APK enjoys a massive user base")),
    );
  }
}

class ForthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Check_New"),
      ),
      body: Center(
          child: new Text(
              "Are you a real movie goer? elCinema is your smart way to know what is playing on the cinemas, where and when your favorite movie will be playing. Moreover,you can book your cinema tickets from elCinema website! All of this and more right at your fingertips!")),
    );
  }
}

class FifthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Details"),
      ),
      body: Center(
          child: new Text(
              "A smart software solution for movie theaters to manage their daily operations, including booking movie tickets, as well as tickets reservation and printing. In addition, it provides financial reports for daily/weekly/monthly/yearly revenue along with financial analysis reports. Cinematic APIs make it easy to integrate with online booking systems such as Chroma.")),
    );
  }
}

class DrawerOnly extends StatelessWidget {
  final Color primaryColor = Color(0xff18203d);
  final Color secondaryColor = Color(0xff232c51);
  @override
  Widget build(BuildContext context) {
    return new Drawer(
        child: new ListView(
      children: <Widget>[
        Container(
          color: primaryColor,
          height: 180.0,
          child: new DrawerHeader(
            decoration: new BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/70.jpg',
                  )),
            ),
          ),
        ),
        Container(
          height: 480.0,
          color: primaryColor,
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              new ListTile(
                leading: Icon(
                  Icons.contacts,
                  color: Colors.white,
                ),
                title: new Text(
                  "Contact",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new FirstPage()));
                },
              ),
              new ListTile(
                leading: Icon(Icons.info, color: Colors.white),
                title: new Text(
                  "About us",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new SecondPage()));
                },
              ),
              new ListTile(
                leading: Icon(Icons.new_releases, color: Colors.white),
                title: new Text("News",
                    style: TextStyle(
                      color: Colors.white,
                    )),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new ThirdPage()));
                },
              ),
              new ListTile(
                leading: Icon(Icons.group, color: Colors.white),
                title: new Text("Check_New",
                    style: TextStyle(
                      color: Colors.white,
                    )),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new ForthPage()));
                },
              ),
              new ListTile(
                leading: Icon(Icons.move_to_inbox, color: Colors.white),
                title: new Text("Details",
                    style: TextStyle(
                      color: Colors.white,
                    )),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new FifthPage()));
                },
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
