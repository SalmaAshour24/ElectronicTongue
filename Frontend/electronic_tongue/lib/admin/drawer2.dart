import 'package:flutter/material.dart';

class Drawer2 extends StatefulWidget {
  @override
  _Drawer2State createState() => _Drawer2State();
}

class _Drawer2State extends State<Drawer2> {
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
              Navigator.pushNamed(context, '/mainscreenA');
            },
          ),
          ListTile(
            leading: Icon(Icons.circle, size: 20, color: Color(0xff506D84)),
            title: Text('Add client'),
            onTap: () {
              Navigator.pushNamed(context, '/addclient');
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
              Navigator.pushNamed(context, '/signout');
            },
          ),
        ],
      ),
    );
  }
}
