import 'drawer2.dart';
import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import 'package:electronic_tongue/Model/users.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


class ClientH extends StatelessWidget {
  String fname, lname, email;
  var ut;

  // Costructor to get the data from the previous page.
  ClientH(
      {required this.fname,
      required this.lname,
      required this.email,
      required this.ut});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer2(),
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
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(
                fname + " " + lname,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Mouse Memoirs',
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
                child: Text(
                  email,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )),
                
            // ElevatedButton(
            //     onPressed: () {
            //      FirebaseFirestore.instance
            //                 .collection('users')
            //                 .doc(ut)
            //                 .delete();
            //     },
            //     style: ElevatedButton.styleFrom(
            //         primary: Color(0xff506D84),
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(10),
            //         ),
            //         textStyle: TextStyle(
            //           fontSize: 25,
            //           fontFamily: 'Mouse Memoirs',
            //         )),
            //     child: Text(
            //       'Delete',
            //       style: TextStyle(
            //         color: Color(0xffffffff),
            //       ),
            //     )),
          ],
        ),
      ),
    );
  }
}