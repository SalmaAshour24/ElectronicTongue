
import 'package:flutter/material.dart';
import 'drawer1.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
     
      
   
                  drawer: Drawer1(),
                  appBar: AppBar(
                    //   title: Apps(),
                    backgroundColor: Color(0xff506D84),
                  ),
                  backgroundColor: Color(0xffffffff),
                  body: Container(
                    child: ListView(children: [
                      Column(children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1),
                          ),
                          child: const ListTile(
                            title: Text(
                              "Your History",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Mouse Memoirs',
                                fontSize: 20,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                          elevation: 30,
                          color: Color(0xff506D84),
                          margin: EdgeInsets.only(
                              bottom: 60, top: 60, left: 90, right: 90),
                        ),
                        Column(children: [
        Padding(padding: EdgeInsets.all(10)),
                          Text('Liquid Name: ',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                          Text(' Milk ->  pure',
                              style:
                                  TextStyle(fontSize: 23, color: Colors.black)),
                        ]),
                      ])
                    ]),
                  ),
        
            
          
    
      
    );
  }
}
