import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Tutorial',
    home: TutorialHome(),
  ));
}

class TutorialHome extends StatelessWidget {
  TextEditingController email = new TextEditingController();
  TextEditingController phno = new TextEditingController();
  TextEditingController pw = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color.fromRGBO(84, 98, 111, 1),
        //appBar: AppBar(title: Text("Register")),
        body: Container(
          color: Colors.white,
          margin: EdgeInsets.fromLTRB(40, 140, 40, 140),
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(labelText: "Email"),
                ),
                TextFormField(
                  controller: phno,
                  decoration: InputDecoration(labelText: "Phone Num"),
                ),
                TextFormField(
                  controller: pw,
                  decoration: InputDecoration(labelText: "Password"),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: OutlineButton(
                    borderSide: BorderSide(
                        width: 0.8,
                        style: BorderStyle.solid,
                        color: Colors.black),
                    color: Colors.white,
                    textColor: Colors.black,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                    splashColor: Color.fromRGBO(84, 98, 111, 1),
                    onPressed: () {
                      print(email.text);
                    },
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text("Already Have an Account ?")),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: OutlineButton(
                    borderSide: BorderSide(
                        width: 0.8,
                        style: BorderStyle.solid,
                        color: Colors.black),
                    color: Colors.white,
                    textColor: Colors.black,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.fromLTRB(86, 0, 86, 0),
                    splashColor: Color.fromRGBO(84, 98, 111, 1),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class LoginPage extends StatelessWidget {
  @override
  TextEditingController email = new TextEditingController();
  TextEditingController pw = new TextEditingController();
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color.fromRGBO(84, 98, 111, 1),
        //appBar: AppBar(title: Text("Login")),
        body: Container(
          color: Colors.white,
          margin: EdgeInsets.fromLTRB(40, 180, 40, 170),
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(labelText: "Email"),
                ),
                TextFormField(
                  controller: pw,
                  decoration: InputDecoration(labelText: "Password"),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: OutlineButton(
                    borderSide: BorderSide(
                        width: 0.8,
                        style: BorderStyle.solid,
                        color: Colors.black),
                    color: Colors.white,
                    textColor: Colors.black,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.fromLTRB(86, 0, 86, 0),
                    splashColor: Color.fromRGBO(84, 98, 111, 1),
                    onPressed: () {
                      print("hello");
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text("New User ?")),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: OutlineButton(
                    borderSide: BorderSide(
                        width: 0.8,
                        style: BorderStyle.solid,
                        color: Colors.black),
                    color: Colors.white,
                    textColor: Colors.black,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.fromLTRB(72, 0, 72, 0),
                    splashColor: Color.fromRGBO(84, 98, 111, 1),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TutorialHome()),
                      );
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
