import 'drawer2.dart';
import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import 'package:electronic_tongue/Model/users.dart';

class AddClient extends StatefulWidget {
  @override
  _AddClientState createState() => _AddClientState();
}

class _AddClientState extends State<AddClient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
    final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer2(),
      appBar: AppBar(
        //   title: Apps(),
        backgroundColor: Color(0xff506D84),

      ),
      body: Form(
                key: _formKey,

        child: Container(
          child: ListView(
            children:  [
              Card(
                child: const ListTile(
                  title: Text(
                    "Add clients",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Mouse Memoirs',
                      fontSize: 20,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
                elevation: 30,
                color: Color(0xff506D84),
                margin:
                    EdgeInsets.only(bottom: 20, top: 20, left: 20, right: 20),
              ),
        
                 Padding(
                padding:  EdgeInsets.only(left: 15, right: 15, top: 5),
                child:  Container(
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    cursorColor: Color(0XFFFFCCFF),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        labelText: 'Enter the client First Name',
                        border: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 5))),
                  ),
                ),
              ),
                   Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Container(
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    cursorColor: Color(0XFFFFCCFF),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        labelText: 'Enter client Last Name',
                        border: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 5))),
                  ),
                ),
              ),
     Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Container(
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    cursorColor: Color(0XFFFFCCFF),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        labelText: 'Enter client Email',
                        border: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 5))),
                  ),
                ),
              ),
                   Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Container(
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    cursorColor: Color(0XFFFFCCFF),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        labelText: 'Enter client password',
                        border: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 5))),
                  ),
                ),
              ),
                  ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                      Navigator.pop(context);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff506D84),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1),
                      ),
                      textStyle: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Mouse Memoirs',
                      )),
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                  )),
            ],
          ),
        ), ),
    
      
 
    );
  }
}
