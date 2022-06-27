import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'drawer1.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}
getData() {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final User? user = auth.currentUser;
  final uid = user?.uid;
  var data = FirebaseFirestore.instance
      .collection('data')
      .where("userid", isEqualTo: uid)
      .snapshots();
  return data;
}
class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    var usersref = getData();
    return Scaffold(
        drawer: Drawer1(),
        appBar: AppBar(
          //   title: Apps(),
          backgroundColor: Color(0xff506D84),
        ),
        backgroundColor: Color(0xffffffff),
        body: Container(
            alignment: FractionalOffset.center,
            color: Colors.white,
            child: Column(children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                ),
                child: const ListTile(
                  title: Text(
                    "History",
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
                    EdgeInsets.only(bottom: 10, top: 20, left: 60, right: 60),
              ),
              Expanded(
                child: StreamBuilder(
                  stream: usersref,
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    return ListView(
                      children: snapshot.data!.docs.map((document) {
                        return Container(
                            padding: EdgeInsets.only(
                      bottom: 0, top: 15, left: 35, right: 10),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 10, 10, 10),
                                        child: Text(
                                          "PH",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 10, 10, 10),
                                      child: Text(document['PH'],
                                          style: TextStyle(
                                            fontSize: 11,
                                          )),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 10, 10, 10),
                                        child: Text("Potential",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold))),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 10, 10, 10),
                                      child: Text(document['potential'],
                                          style: TextStyle(
                                            fontSize: 11,
                                          )),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 10, 10, 10),
                                        child: Text("Conductivity",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold))),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 10, 10, 10),
                                      child: Text(document['conductivity'],
                                          style: TextStyle(
                                            fontSize: 11,
                                          )),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.only(
                      bottom: 0, top: 25, left: 25, right: 10),
                                        child: Text("OutPut",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold))),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(
                      bottom: 5, top: 5, left: 25, right: 11),
                                      child: Text(document['output'],
                                          style: TextStyle(
                                            fontSize: 10,
                                          )),
                                    ),
                                  ],
                                )
                              ],
                            ));
                      }).toList(),
                    );
                  },
                ),
              )
            ])));
  }
}