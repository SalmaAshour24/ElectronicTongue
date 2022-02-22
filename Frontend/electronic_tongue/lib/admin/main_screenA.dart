
import 'drawer2.dart';
import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import 'package:electronic_tongue/Model/users.dart';

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
    return Scaffold(
      drawer: Drawer2(),
      appBar: AppBar(
        //   title: Apps(),
        backgroundColor: Color(0xff506D84),
        
      title: Padding(
        padding: const EdgeInsets.only(left: 200, bottom: 1),
        child: IconButton(
          icon: Icon(Icons.search),
          tooltip: 'Search your Clients',
          onPressed: () => showSearch(
            context: context,
            delegate: SearchPage<User>(
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
        
        child: Column(

          children: const [
            SizedBox(height: 50,),
             Card(
              child: const ListTile(
                title: Text(
                  "Your clients",
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
              margin: EdgeInsets.only(bottom: 20, top: 20, left: 20, right: 20),
            ),
            Padding(padding: EdgeInsets.all(20)),
            Text('Shadwa ',
                style: TextStyle(fontSize: 35, color: Colors.black)),
          Text('Salma ',
                style: TextStyle(fontSize: 35, color: Colors.black)),
          Text('Bassant ',
                style: TextStyle(fontSize: 35, color: Colors.black)),
          Text('Maha ',
                style: TextStyle(fontSize: 35, color: Colors.black)),
        
          ],
        ),
      ),
    );
  }
}
