import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Imc extends StatelessWidget {
  double imc;

  Imc(this.imc);

  String nivelImc(double imc) {
    String result = '';
    if (imc < 18.5) {
      result = "Peso Baixo";
      return result;
    }
    if (imc >= 18.5 && imc < 25.0) {
      result = "Peso Normal";
      return result;
    }
    if (imc >= 25.0 && imc < 30.0) {
      result = "Sobrepeso";
      return result;
    }
    if (imc >= 30.0 && imc < 35.0) {
      result = "Obesidade (Grau I)";
      return result;
    }
    if (imc >= 35.0 && imc < 40.0) {
      result = "Obesidade Severa (Grau II)";
      return result;
    }
    if (imc >= 40.0) {
      result = "Obesidade Mórbida (Grau III)";
      return result;
    }

    return result;
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
                        nivelImc(imc).toUpperCase(),
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
