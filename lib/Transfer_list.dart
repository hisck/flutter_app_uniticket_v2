import 'package:flutter/material.dart';
import 'package:flutter_app_uniticket_v2/Transfer_card.dart';
import 'package:flutter_app_uniticket_v2/Transfer_model.dart';

class TransferList extends StatelessWidget{
  final List<Transfer> transferencias;
  TransferList(this.transferencias);

  @override
  Widget build(BuildContext context) {
    return _buildList(context);
  }
  ListView _buildList(context){
    return ListView.builder(
      itemCount: transferencias.length,
      itemBuilder: (context, int){
        return TransferCard(transferencias[int]);
      },
    );
  }
}