import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'home_page.dart';
import 'login_page.dart';

class Rec_Pass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          padding: EdgeInsets.only(top: 60, left: 40, right: 40),
          color: Colors.white,
          child: ListView(children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset('assets/images/flutter_ico.png'),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              // autofocus: true,

              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    0.3,
                    1
                  ],
                  colors: [
                    Color(0xFF2494F5),
                    Color(0xFF095A9D),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      "RECUPERAR",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
                    },
                  ),
                ],
              ),
            ),
          ])),
    );
  }
}
