import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';

final databaseReference = Firestore.instance;
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
  void Register() async {
    await databaseReference
        .collection("users")
        .document(email.text)
        .setData({'email': email.text, 'phno': phno.text, 'pw': pw.text});
    Fluttertoast.showToast(
        msg: "Registration Success",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.white // also possible "TOP" and "CENTER"
        );
  }

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
                    onPressed: Register,
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
  TextEditingController email = new TextEditingController();
  TextEditingController pw = new TextEditingController();
  void Login(BuildContext context) {
    databaseReference.collection("users").getDocuments().then((querySnapshot) {
      querySnapshot.documents.forEach((result) {
        if (result.data["email"] == email.text &&
            result.data["pw"] == pw.text) {
          Fluttertoast.showToast(
              msg: "Login Success",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              backgroundColor: Colors.white // also possible "TOP" and "CENTER"
              );
        } else {
          Fluttertoast.showToast(
              msg: "Invalid Details",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM // also possible "TOP" and "CENTER"
              );
        }
      });
    });
  }

  @override
  Widget build(BuildContext c) {
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
                      Login(c);
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
                        c,
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
