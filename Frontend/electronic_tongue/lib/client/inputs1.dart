import 'package:flutter/material.dart';
import 'API.dart';
import 'drawer1.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Input1 extends StatefulWidget {
  const Input1({Key? key}) : super(key: key);
  @override
  _Input1State createState() => _Input1State();
}

class _Input1State extends State<Input1> {
  final _formKey = GlobalKey<FormState>();
  String output = 'Milk Classification';
  dynamic url;
  var userid;
  var Data;
  var PH, potential, conductivity;
  @override
  Widget build(BuildContext context) {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        userid = user.uid;
        print(userid);
      } else {
        print("errrrrooooorrrrrrrrr");
      }
    });
    return Scaffold(
      drawer: Drawer1(),
      appBar: AppBar(
        //   title: Apps(),
        backgroundColor: Color(0xff506D84),
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(children: [
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
              margin: EdgeInsets.only(bottom: 15, top: 20, left: 20, right: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        width: 300,
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: TextFormField(
                              keyboardType: TextInputType.numberWithOptions(
                                  decimal: true),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Enter input';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                PH = value;
                              },
                              cursorColor: Color(0XFFFFCCFF),
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: 'PH input',
                                  border: OutlineInputBorder(),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.red, width: 5)))),
                        )),
                    Container(
                        width: 300,
                        height: 70,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Enter input';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                potential = value;
                              },
                              cursorColor: Color(0XFFFFCCFF),
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: 'Potential input',
                                  border: OutlineInputBorder(),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.red, width: 5)))),
                        )),
                    Container(
                        width: 300,
                        height: 70,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Enter input';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                conductivity = value;
                              },
                              cursorColor: Color(0XFFFFCCFF),
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: 'Conductivity input',
                                  border: OutlineInputBorder(),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.red, width: 5)))),
                        ))
                  ]),
            ),
            Text(
              output,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff506D84)),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
              child: ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }

                    url = 'http://10.0.2.2:5000/milk?input1=' +
                        PH +
                        '&input2=' +
                        potential +
                        '&input3=' +
                        conductivity;
                    Data = await Getdata(url);
                    setState(() {
                      output = Data;
                    });

                    FirebaseFirestore.instance.collection('data').add({
                      'PH': PH,
                      'potential': potential,
                      'conductivity': conductivity,
                      'output': Data,
                      'userid': userid
                    });
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
      ),
    );
  }
}
