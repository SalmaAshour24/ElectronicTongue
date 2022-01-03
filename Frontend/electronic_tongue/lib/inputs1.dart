import 'package:flutter/material.dart';

class Input1 extends StatefulWidget {
  const Input1({Key? key}) : super(key: key);

  @override
  _Input1State createState() => _Input1State();
}

class _Input1State extends State<Input1> {
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
              "Please enter inputs in the bellow boxes",
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
          margin: EdgeInsets.only(bottom: 45, top: 70, left: 20, right: 20),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
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
                                BorderSide(color: Colors.red, width: 5)))))
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 200),
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
