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
          backgroundColor: Color(0xff506D84),
        ),
        backgroundColor: Color(0xffffffff),
        body: Container(
          child: ListView(children: [
            Column(children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                ),
                child: const ListTile(
                  title: Text(
                    "Result",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Mouse Memoirs',
                      fontSize: 30,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
                elevation: 30,
                color: Color(0xff506D84),
                margin:
                    EdgeInsets.only(bottom: 60, top: 60, left: 90, right: 90),
              ),
              Column(children: [
                Padding(padding: EdgeInsets.all(10)),
                const Text('Liquid Name: ',
                    style: TextStyle(fontSize: 35, color: Colors.black)),
                const Text('Black Tea -> 70% ',
                    style: TextStyle(fontSize: 23, color: Colors.black))
              ]),
            ])
          ]),
        ));
  }
}
