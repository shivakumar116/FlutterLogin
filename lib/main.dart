import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Tutorial',
    home: TutorialHome(),
  ));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color.fromRGBO(84, 98, 111, 1),
        appBar: AppBar(title: Text("Home")),
        body: Container(
          color: Colors.white,
          margin: EdgeInsets.fromLTRB(40, 150, 40, 150),
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: "Email"),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Phone Num"),
                ),
                TextFormField(
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
                      /*...*/
                    },
                    child: Text(
                      "Create Account",
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
