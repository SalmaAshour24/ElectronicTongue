import 'package:flutter/material.dart';
import 'API.dart';
import 'drawer1.dart';

class Input1 extends StatefulWidget {
  const Input1({Key? key}) : super(key: key);

  @override
  _Input1State createState() => _Input1State();
}

class _Input1State extends State<Input1> {
  String output = 'Milk Classification';
  dynamic url;
  var Data;
  var inp1, inp2, inp3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer1(),
      appBar: AppBar(
        //   title: Apps(),
        backgroundColor: Color(0xff506D84),
      ),
      body: ListView(children: [
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
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter input';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            inp1 = value;
                          },
                          cursorColor: Color(0XFFFFCCFF),
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              labelText: 'First input',
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
                            inp2 = value;
                          },
                          cursorColor: Color(0XFFFFCCFF),
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              labelText: 'First input',
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
                            inp3 = value;
                          },
                          cursorColor: Color(0XFFFFCCFF),
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              labelText: 'First input',
                              border: OutlineInputBorder(),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.red, width: 5)))),
                    ))
              ]),
        ),
        Text(
          output,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
          child: ElevatedButton(
              onPressed: () async {
                url = 'http://10.0.2.2:5000/milk?input1=' +
                    inp1 +'&input2=' + inp2 + '&input3=' + inp3;
                Data = await Getdata(url);
                setState(() {
                  output = Data;
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
    );
  }
}
