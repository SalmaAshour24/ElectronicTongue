import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Drawer1 extends StatefulWidget {
  @override
  _Drawer1State createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Row(
              children: [
                Image.asset(
                  'assets/profile.jpeg',
                  scale: 10.2,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  child: Column(
                    children: [
                      Text('Username'),
                      Text('name@yahoo.com'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 10,
            thickness: 1.2,
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Color(0xff506D84),
            ),
            title: Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/mainscreen');
            },
          ),
          ListTile(
            leading: Icon(Icons.circle, size: 20, color: Color(0xff506D84)),
            title: Text('Delete account'),
            onTap: () {
              Navigator.pushNamed(context, '/results');
            },
          ),
          ListTile(
            leading: Icon(Icons.circle, size: 20, color: Color(0xff506D84)),
            title: Text('History'),
            onTap: () {
              Navigator.pushNamed(context, '/history');
            },
          ),
          Divider(
            height: 1,
            thickness: 1.2,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app_rounded, color: Color(0xff506D84)),
            title: Text('Sign out'),
            onTap: () {
              FirebaseAuth.instance.signOut();
              Navigator.pushNamed(context, '/signout');
            },
          ),
        ],
      ),
    );
  }
}
