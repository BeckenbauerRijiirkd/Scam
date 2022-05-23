import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'composicao_corporal.dart';

class Comp_Corp_Result extends StatelessWidget {
  Composicao_Corporal comp;

  Comp_Corp_Result(this.comp);

  double percentualGordura(Composicao_Corporal comp) {
    double percentualGordura = 0.0;

    if (comp.genero == 0) {
      //Masculino
      percentualGordura = (4.95 / (1.1765 - 0.0744 * log(10) * (comp.triceps + comp.biceps + comp.se + comp.si)) - 4.50) * 100;
    } else {
      //Feminino
      percentualGordura = (4.95 / (1.1567 - 0.0717 * log(10) * (comp.triceps + comp.biceps + comp.se + comp.si)) - 4.50) * 100;
    }

    return percentualGordura;
  }

  double pesoGordura(double peso, double percentualGordura) {
    return (peso * percentualGordura) / 100;
  }

  double pesoMassaMagra(double peso, double pesoGordura) {
    return (peso - pesoGordura);
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
                Container(child: Text("Composição Corporal")),
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
                        percentualGordura(comp).toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      )),
                      Container(
                          child: Text(
                        percentualGordura(comp).toString(),
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
