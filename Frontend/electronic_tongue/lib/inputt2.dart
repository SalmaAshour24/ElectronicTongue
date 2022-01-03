import 'package:flutter/material.dart';

import 'drawer1.dart';

class Input2 extends StatefulWidget {
  const Input2({Key? key}) : super(key: key);

  @override
  _Input2State createState() => _Input2State();
}

class _Input2State extends State<Input2> {
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
         Container(
          alignment: Alignment.topCenter,
          padding: new EdgeInsets.only(top: 130, right: 20.0, left: 20.0),
          child:  Container(
            height: 580.0,
            width: MediaQuery.of(context).size.width,
            child:  Card(
              child:Scaffold(
                  drawer: Drawer1(),
                appBar: AppBar(
                  //   title: Apps(),
                  backgroundColor: Color(0xff506D84),
                ),
      body: ListView(children: [
        const Card(
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(35),
          // ),
          child: ListTile(
            title: Text(
              "Please Enter Inputs In The Bellow Boxes",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Color(0xffffffff),
              ),
            ),
          ),
          elevation: 30,
          color: Color(0xff506D84),
          margin: EdgeInsets.only(bottom: 45, top: 10, left: 20, right: 20),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: [
            Container(
                width: 50,
                //  height: 20,
                child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter input';
                      }
                      return null;
                    },
                    cursorColor: Color(0XFFFFCCFF),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        labelText: 'First input',
                        border: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 5))))),
            Container(
                width: 50,
                child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter input';
                      }
                      return null;
                    },
                    cursorColor: Color(0XFFFFCCFF),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        labelText: 'Second input',
                        border: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 5))))),
            Container(
                width: 50,
                //  height: 20,
                child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter input';
                      }
                      return null;
                    },
                    cursorColor: Color(0XFFFFCCFF),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        labelText: 'third input',
                        border: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 5))))),
            Container(
                width: 50,
                //  height: 20,
                child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter input';
                      }
                      return null;
                    },
                    cursorColor: Color(0XFFFFCCFF),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        labelText: 'fourth input',
                        border: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 5))))),
            Container(
                width: 50,
                //  height: 20,
                child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter input';
                      }
                      return null;
                    },
                    cursorColor: Color(0XFFFFCCFF),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        labelText: 'fifth input',
                        border: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 5)))))
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/results');
              },
              style: ElevatedButton.styleFrom(
                  primary: Color(0xff506D84),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  textStyle: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Mouse Memoirs',
                  )),
              child: Text(
                'Show Output',
                style: TextStyle(
                  color: Color(0xffffffff),
                ),
              )),
        ),
      ]),
    ),
              color: Color(0xffEEEEEE),
              elevation: 9.0,
            ),
          ),
        )
      ],
    );

  }
}
