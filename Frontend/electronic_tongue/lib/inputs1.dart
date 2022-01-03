import 'package:flutter/material.dart';

import 'drawer1.dart';

class Input1 extends StatefulWidget {
  const Input1({Key? key}) : super(key: key);

  @override
  _Input1State createState() => _Input1State();
}

class _Input1State extends State<Input1> {
  @override
  Widget build(BuildContext context) {
    return 
    Stack(
      children: <Widget>[
         Column(
          children: <Widget>[
             Container(
              height: 200,
              color: Color(0xff506D84),
            ),
             Container(
              height: 580,
              color: Color(0xffEEEEEE),
            )
          ],
        ),
         Container(
          alignment: Alignment.topCenter,
          padding:  EdgeInsets.only(top: 130, right: 20.0, left: 20.0),
          child:  Container(
            height: 600.0,
            width: MediaQuery.of(context).size.width,
            child:  Card(
              child: Scaffold(      drawer: Drawer1(),
                appBar: AppBar(
                  //   title: Apps(),
                  backgroundColor: Color(0xff506D84),
                ),
              
             body: 
               ListView(
      children: [
        const Card(
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(35),
          // ),
          child: ListTile(
            title: Text(
              "Please enter inputs in the bellow boxes",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Color(0xffffffff),
              ),
            ),
          ),
          elevation: 30,
          color: Color(0xff506D84),
          margin: EdgeInsets.only(bottom: 15, top:20,left: 20, right: 20),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
                width: 70,
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
                width: 70,
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
                width: 70,
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
                    borderRadius: BorderRadius.circular(6),
                  ),
                 ),
              child: Text(
                'Show Output',
                style: TextStyle(
                  color: Color(0xffffffff),
                                      fontSize: 20,

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
