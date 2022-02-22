import 'drawer2.dart';
import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import 'package:electronic_tongue/Model/users.dart';

class ClientH extends StatefulWidget {
  @override
  _ClientHState createState() => _ClientHState();
}

class _ClientHState extends State<ClientH> {
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
  @override
  Widget build(BuildContext context) {
    String username="bb";
    User(username);
    return Scaffold(
      drawer: Drawer2(),
      appBar: AppBar(
        //   title: Apps(),
        backgroundColor: Color(0xff506D84),

      ),
      body: Container(
        child: Column(
          children:  [
            Card(
              child:  ListTile(
                title: Text(
                  "Bassant Mohamed",
                  
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
              margin: EdgeInsets.only(bottom: 20, top: 30, left: 20, right: 20),
           
            ),
            Padding(padding: EdgeInsets.all(10)),
             Text('Liquid Name: ',
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                 Text(' Milk ->  pure',
                    style: TextStyle(fontSize: 23, color: Colors.black)),
                       Padding(padding: EdgeInsets.all(80)),

            ElevatedButton(
                onPressed: (){                },
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff506D84),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    textStyle: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Mouse Memoirs',
                    )),
                child: Text(
                  'Delete this client',
                  style: TextStyle(
                    color: Color(0xffffffff),
                  ),
                )), ],
        
        ),
      ),
      
    );
  }
}
