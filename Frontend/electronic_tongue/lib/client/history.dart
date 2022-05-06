import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'drawer1.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}
var userid;

  getData() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        userid = user.uid;
        print(userid);
      } else {
        print("errrrrooooorrrrrrrrr");
      }
    });
    var data= FirebaseFirestore.instance
            .collection('data').where("userid", isEqualTo: userid).snapshots();
    return data;
  }

class _HistoryState extends State<History> {
  
  //CollectionReference usersref =FirebaseFirestore.instance.collection("users");
  @override
  Widget build(BuildContext context) {
   var usersref=getData();
    return Scaffold(
      drawer: Drawer1(),
      appBar: AppBar(
        //   title: Apps(),
        backgroundColor: Color(0xff506D84),
      ),
      backgroundColor: Color(0xffffffff),
      body: 
       StreamBuilder(
        stream: usersref
            ,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView(
            children:
            
             snapshot.data!.docs.map((document) {
              return Container(
                  padding: EdgeInsets.fromLTRB(30, 20, 20, 20),
                  child: Row(
                    children: [
                      
                      Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10,10),
                              child: Text("PH",style: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.bold
                  ),)),
                         Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10,10),
                              child:  Text(document['PH'],style: TextStyle(
                    fontSize: 15,
                  )),),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10,10),
                              child: Text("Potential",style: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.bold
                  ))),
                         Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10,10),
                              child:  Text(document['potential'],style: TextStyle(
                    fontSize: 15,
                  )),),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10,10),
                              child: Text("Conductivity",style: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.bold
                  ))),
                         Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10,10),
                              child:  Text(document['conductivity'],style: TextStyle(
                    fontSize: 15,
                  )),),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10,10),
                              child: Text("OutPut",style: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.bold
                  ))),
                         Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10,10),
                              child:  Text(document['output'],style: TextStyle(
                    fontSize: 15,
                  )),),
                        ],
                      )
                    ],
                  )
                  );
            }).toList(),
          );
        },
      ),
    );
  }
}
