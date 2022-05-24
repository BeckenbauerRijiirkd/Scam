import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'imc_page.dart';
import 'comp_corporal.dart';
import 'package:scam.com/services/auth_service.dart';

import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            padding: EdgeInsets.only(top: 60, left: 40, right: 40),
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  width: 128,
                  height: 128,
                  child: Image.asset('assets/images/flutter_ico.png'),
                ),
                Container(
                  height: 60,
                  margin: EdgeInsets.all(10),
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
                          "IMC",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Imc_Page()));
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 60,
                    margin: EdgeInsets.all(10),
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
                    child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                      FlatButton(
                        child: Text(
                          "COMP. COMRPORAL",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Comp_Corporal_Page()));
                        },
                      )
                    ])),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: OutlinedButton(
                    onPressed: () => context.read<AuthService>().logout(),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Sair',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}
