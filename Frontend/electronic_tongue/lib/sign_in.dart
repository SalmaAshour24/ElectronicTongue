import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Container(
              
              height: 200,
              color: Color(0xff506D84),
            ),
            new Container(
              height: 580,
              color: Color(0xffEEEEEE),
            )
          ],
        ),
        new Container(
          alignment: Alignment.topCenter,
          padding: new EdgeInsets.only(top: 130, right: 20.0, left: 20.0),
          child: new Container(
            height: 580.0,
            width: MediaQuery.of(context).size.width,
            child: new Card(
              child: MyCustomForm(),
              color: Color(0xffEEEEEE),
              elevation: 9.0,
            ),
          ),
        )
      ],
    );

    // const MyCustomForm(),
  }
}
//Column(
//      children: [
//      Container(
//      // width: 100,
//    height: 200,
//  color: Color(0xff146356),
//            child:   Container(
//              child: Card(
//              color: Color(0xffF4EEA9),
//            shape: RoundedRectangleBorder(
//              borderRadius: BorderRadius.circular(30)),
//      ),
//    height: 200,
//),
//),

//],
//),

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(children: [
        // Container(
        //   color: Color(0xff00008b),
        //   height: 70,
        //   child: Text(
        //     "Electronic Tongue",
        //     textAlign: TextAlign.center,
        //     style: TextStyle(
        //       fontFamily: 'Mouse Memoirs',
        //       fontSize: 40,
        //       color: Color(0xffffffff),
        //     ),
        //   ),
        // ),
        Container(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                ),
                child: const ListTile(
                  title: Text(
                    "SIGN IN",
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
              child: Container(
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                        .hasMatch(value)) {
                      return 'Please Enter a valid Email';
                    }
                    return null;
                  },
                  cursorColor: Color(0XFFFFCCFF),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      labelText: 'Enter Email',
                      border: OutlineInputBorder(),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 5))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Container(
                child: TextFormField(
                  obscureText: true,
                  // obscure tkhalih msh bayn el pass
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  cursorColor: Color(0XFFFFCCFF),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      labelText: 'Enter Password',
                      border: OutlineInputBorder(),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 5))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                          Navigator.pushNamed(context, '/mainscreen');
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xff506D84),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          textStyle: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Mouse Memoirs',
                          )),
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          color: Color(0xffffffff),
                        ),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                'Do not have an account?',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontFamily: 'Mouse Memoirs',
                  fontSize: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 70),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff506D84),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Mouse Memoirs',
                      )),
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                  )),
            ),
          ],
        ))
      ]),
    );
  }
}
