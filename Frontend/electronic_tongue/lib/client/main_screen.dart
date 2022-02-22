// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'drawer1.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer1(),
      appBar: AppBar(
        //   title: Apps(),
        backgroundColor: Color(0xff506D84),
      ),
      body: Container(
        child: ListView(
          
          children: [
            SizedBox(height: 60,),
            Card(
              child: const ListTile(
                title: Text(
                  "Press here to add your milk readings form your device ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Mouse Memoirs',
                    fontSize: 20,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              elevation: 30,
              color: Color(0xff506D84),
              margin: EdgeInsets.only(bottom: 45, top: 20, left: 20, right: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/inp1');
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xff506D84),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          textStyle: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Mouse Memoirs',
                          )),
                      child: Text(
                        'Add reading',
                        style: TextStyle(
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
