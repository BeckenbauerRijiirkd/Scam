import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'composicao_corporal.dart';

class Comp_Corp_Result extends StatelessWidget {
  Composicao_Corporal comp;

  Comp_Corp_Result(this.comp);

  double comp_Corp_Calc(Composicao_Corporal comp) {
//     Homens de 17 a 72 anos:
// percentualGordura = (4,95 / (1,1765 – 0,0744 Log10 (TR + BI + SE + SI))) - 4,50) x 100

// Mulheres de 17 a 72 anos:
// percentualGordura = (4,95 / (1,1567 – 0,0717 Log10 (TR + BI + SE + SI))) - 4,50) x 100

    // double percentualGordura = (4.95 / (1.1765 - 0.0744 log() (comp.triceps + comp.biceps + comp.se + comp.si))) - 4.50) * 100;

    return 0.0;
  }

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
                SizedBox(
                  height: 20,
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
                      Container(
                          child: Text(
                        this.comp.altura.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      )),
                    ],
                  ),
                ),
              ],
            )));
  }
}
