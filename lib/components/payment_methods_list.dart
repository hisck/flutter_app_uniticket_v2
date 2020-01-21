import 'package:flutter/material.dart';
import 'package:flutter_app_uniticket_v2/components/payment_methods_card.dart';
import 'package:flutter_app_uniticket_v2/components/payment_methods_model.dart';

class MetodoList extends StatelessWidget{
  final List<Metodo> metodoss;
  MetodoList(this.metodoss);

  @override
  Widget build(BuildContext context) {
    return _buildList(context);
  }
  ListView _buildList(context){
    return ListView.builder(
      itemCount: metodoss.length,
      itemBuilder: (context, int){
        return MetodoCard(metodoss[int]);
      },
    );
  }
}