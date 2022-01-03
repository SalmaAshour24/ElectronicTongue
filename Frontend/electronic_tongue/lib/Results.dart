import 'package:flutter/material.dart';
import 'drawer1.dart';

class Results extends StatefulWidget {
  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer1(),
        appBar: AppBar(
          //   title: Apps(),
          backgroundColor: Color(0xff3D008b),
        ),
        backgroundColor: Color(0xffffffff),
        body: Container(
          child: ListView(children: [
            Column(children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
                child: const ListTile(
                  title: Text(
                    "Result",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Mouse Memoirs',
                      fontSize: 50,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
                elevation: 30,
                color: Color(0xff00008b),
                margin:
                    EdgeInsets.only(bottom: 60, top: 60, left: 90, right: 90),
              ),
              Column(children: [
                Padding(padding: EdgeInsets.all(10)),
                const Text('Liquid Name: ',
                    style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'Mouse Memoirs',
                        color: Colors.black)),
                const Text('Black Tea -> 70% ',
                    style: TextStyle(
                        fontSize: 23,
                        fontFamily: 'Mouse Memoirs',
                        color: Colors.black))
              ]),
            ])
          ]),
        ));
  }
}
