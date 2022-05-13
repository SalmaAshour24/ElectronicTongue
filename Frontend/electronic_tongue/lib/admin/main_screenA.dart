import 'package:cloud_firestore/cloud_firestore.dart';
import 'drawer2.dart';
import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import 'package:electronic_tongue/Model/users.dart';
import 'package:electronic_tongue/admin/client_homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MainScreenA extends StatefulWidget {
  @override
  _MainScreenAState createState() => _MainScreenAState();
}

class _MainScreenAState extends State<MainScreenA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home(),
    );
  }
}

var userid;
getData() {
  var data = FirebaseFirestore.instance
      .collection('users')
      .where("usertype", isEqualTo: 2)
      .snapshots();
  return data;
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var usersref = getData();
    return Scaffold(
        drawer: Drawer2(),
        appBar: AppBar(
          //   title: Apps(),
          backgroundColor: Color(0xff506D84),

          title: Padding(
            padding: const EdgeInsets.only(left: 292, top: 5),
            child: IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search your Clients',
              onPressed: () => showSearch(
                context: context,
                delegate: SearchPage<user>(
                  onQueryUpdate: (s) => print(s),
                  items: users,
                  searchLabel: 'Search  Clients',
                  searchStyle: TextStyle(color: Color(0xff506D84)),
                  barTheme: ThemeData.dark(),
                  suggestion: Center(
                    child: Text('search ..'),
                  ),
                  failure: Center(
                    child: Text(
                      'No clients found :(',
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                  ),
                  filter: (User) => [
                    User.username,
                  ],
                  builder: (User) => ListTile(
                    title: Text(
                      User.username,
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/clientH');
                    },
                    //trailing: Text('${person.age} yo'),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: Container(
            alignment: FractionalOffset.center,
            color: Colors.white,
            child: Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1),
                  ),
                  child: const ListTile(
                    title: Text(
                      "Users",
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
                          return ListTile(
                            title: Text(document['firstname'],
                                style: TextStyle(
                                  fontSize: 18,
                                )),

                            // When a user taps the ListTile, navigate to the DetailScreen.
                            // Notice that you're not only creating a DetailScreen, you're
                            // also passing the current todo through to it.
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    // Builder for the nextpage
                                    // class's constructor.
                                    builder: (context) => ClientH(
                                          fname: document['firstname'],
                                          lname: document['lastname'],
                                          email: document['email'],
                                          ut: document.id,
                                        )),
                              );
                            },
                          );
                        }).toList(),
                      );
                    },
                  ),
                ),
              ],
            )));
  }
}

                          
//                           Container(
//                             padding: EdgeInsets.fromLTRB(30, 20, 20, 20),
//                             child: Column(
//                               children: [GestureDetector(
//   onTap: () { print("I was tapped!"); },
//   child: Padding(
//                                         padding:
//                                             EdgeInsets.fromLTRB(0, 0, 0, 0),
//                                         child: Text(
//                                           "Name:",
//                                           style: TextStyle(
//                                             fontSize: 20,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                         )),
// ),
//                                 Row(
//                                   children: [
//                                     Padding(
//                                         padding:
//                                             EdgeInsets.fromLTRB(0, 0, 0, 0),
//                                         child: Text(
//                                           "Name:",
//                                           style: TextStyle(
//                                             fontSize: 20,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                         )),
//                                     Row(
//                                       children: [
//                                         Text(document['firstname'],
//                                               style: TextStyle(
//                                                 fontSize: 18,
//                                               )),
                                        
//                                         Text(document['lastname'],
//                                             style: TextStyle(
//                                               fontSize: 18,
//                                             )),
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Padding(
//                                         padding:
//                                             EdgeInsets.fromLTRB(0, 0, 0, 0),
//                                         child: Text(
//                                           "Email:",
//                                           style: TextStyle(
//                                             fontSize: 20,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                         )),
                                        
//                                     Row(
//                                       children: [
//                                         Padding(
//                                           padding: EdgeInsets.fromLTRB(
//                                               10, 10, 10, 10),
//                                           child: Text(document['email'],
//                                               style: TextStyle(
//                                                 fontSize: 18,
//                                               )),
//                                         ),
//                                       ],
//                                     )
//                                   ],
//                                 )
//                               ],
//                             ),
//                           );