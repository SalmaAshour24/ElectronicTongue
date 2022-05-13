import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'drawer1.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

//var uid;
getData() async{
  final FirebaseAuth auth = FirebaseAuth.instance;
  final User? user = auth.currentUser;
  final uid = user?.uid;
  await FirebaseFirestore.instance.collection('users').doc(uid).delete();
}

class Results extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer1(),
      appBar: AppBar(
        //   title: Apps(),
        backgroundColor: Color(0xff506D84),
      ),
      body: Container(
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text(
                  "Client",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Mouse Memoirs',
                    fontSize: 25,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              elevation: 30,
              color: Color(0xff506D84),
              margin: EdgeInsets.only(bottom: 35, top: 30, left: 20, right: 20),
            ),
            ElevatedButton(
                onPressed: () async{
                  if (FirebaseAuth.instance.currentUser != null) {
                    //var uid = FirebaseAuth.instance.currentUser?.uid;
                    //print(uid);
                    var uid = getData();
                    await uid;
                    FirebaseAuth.instance.currentUser?.delete();
                    FirebaseAuth.instance.signOut();
                    Navigator.pushNamed(context, '/signout');
                  }
                },
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff506D84),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Mouse Memoirs',
                    )),
                child: Text(
                  'Delete',
                  style: TextStyle(
                    color: Color(0xffffffff),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
