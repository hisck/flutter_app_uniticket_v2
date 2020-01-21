import 'package:flutter/material.dart';
import 'package:flutter_app_uniticket_v2/components/payment_methods_model.dart';
import 'package:flutter_app_uniticket_v2/components/payment_methods_list.dart';

class MetodoPage extends StatelessWidget {

  MetodoPage();

  List<Metodo> initialMetodo = []
    ..add(Metodo('XXX', 'XXXX XXXX XXXX 8596'))
    ..add(Metodo('XXX', 'XXXX XXXX XXXX 9858'));

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
          child: Center(
            child: MetodoList(initialMetodo),
          )
      ),
    );
  }
}
