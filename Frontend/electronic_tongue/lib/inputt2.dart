import 'package:flutter/material.dart';

class Input2 extends StatefulWidget {
  const Input2({Key? key}) : super(key: key);

  @override
  _Input2State createState() => _Input2State();
}

class _Input2State extends State<Input2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Card(
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(35),
          // ),
          child: const ListTile(
            title: Text(
              "Please Enter Inputs In The Bellow Boxes",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Mouse Memoirs',
                fontSize: 30,
                color: Color(0xffffffff),
              ),
            ),
          ),
          elevation: 30,
          color: Color(0xff00008b),
          margin: EdgeInsets.only(bottom: 45, top: 50, left: 20, right: 20),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 200.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
                        labelText: 'fourth input',
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
                        labelText: 'fifth input',
                        border: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 5)))))
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 150),
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/results');
              },
              style: ElevatedButton.styleFrom(
                  primary: Color(0xff00008b),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
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
    );
  }
}
