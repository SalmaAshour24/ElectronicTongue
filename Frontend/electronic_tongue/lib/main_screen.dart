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
    return Stack(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Container(
              height: 200,
              color: Color(0xff506D84),
            ),
            new Container(
              height: 580,
              color: Color(0xffEEEEEE),
            )
          ],
        ),
        new Container(
          alignment: Alignment.topCenter,
          padding: new EdgeInsets.only(top: 130, right: 20.0, left: 20.0),
          child: new Container(
            height: 600.0,
            width: MediaQuery.of(context).size.width,
            child: new Card(
              child: Home(),
              color: Color(0xffEEEEEE),
              elevation: 9.0,
            ),
          ),
        )
      ],
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
    return 
       Scaffold(
         drawer: Drawer1(),
           appBar: AppBar(
          //   title: Apps(),
          backgroundColor: Color(0xff506D84),
        ),
        body:Container(
          child: ListView(
            children: [
              Card(
               
                child: const ListTile(
                  title: Text(
                    "Please choose a button",
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
                margin:
                    EdgeInsets.only(bottom: 45, top: 20, left: 20, right: 20),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200, bottom: 130),
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
                              borderRadius: BorderRadius.circular(40),
                            ),
                            textStyle: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Mouse Memoirs',
                            )),
                        child: Text(
                          'Button1',
                          style: TextStyle(
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
 
                            Navigator.pushNamed(context, '/inp2');
                          
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff506D84),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            textStyle: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Mouse Memoirs',
                            )),
                        child: Text(
                          'Button2',
                          style: TextStyle(
                            color: Color(0xffffffff),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ) ,
       );
  }
}
