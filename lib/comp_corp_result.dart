import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'composicao_corporal.dart';

class Comp_Corp_Result extends StatelessWidget {
  Composicao_Corporal comp;

  Comp_Corp_Result(this.comp);

  double percentualGordura(Composicao_Corporal comp) {
    double percentualGordura = 0.0;
    //DI
    //1,1620 – 0,0630 Log10 (TR + BI + SE + SI)
    //
    //pg
    //[(4,95 / Densidade corporal) – 4,50] x 100

    double dc = 1.1567 - 0.0717 * log(54);

    print(dc);
    print("==========");

    if (comp.genero == 0) {
      //Masculino
      percentualGordura = (4.95 / (1.1765 - 0.0744 * log(10) * ((comp.triceps / 1000) + (comp.biceps / 1000) + (comp.se / 1000) + (comp.si / 1000))) - 4.50) * 100;
    } else {
      //Feminino
      percentualGordura = (4.95 / (1.1567 - 0.0717 * log(10) * ((comp.triceps / 1000) + (comp.biceps / 1000) + (comp.se / 1000) + (comp.si / 1000))) - 4.50) * 100;
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
                    color: Colors.blue,
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
                        percentualGordura(comp).toStringAsFixed(2),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ))
                    ],
                  ),
                ),
                Container(child: Text("Peso Gordura")),
                Container(
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
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
                        pesoGordura(comp.peso, percentualGordura(comp)).toStringAsFixed(2),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ))
                    ],
                  ),
                ),
                Container(child: Text("Peso Massa Magra")),
                Container(
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
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
                        pesoMassaMagra(comp.peso, pesoGordura(comp.peso, percentualGordura(comp))).toStringAsFixed(2),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ))
                    ],
                  ),
                )
              ],
            )));
  }
}
