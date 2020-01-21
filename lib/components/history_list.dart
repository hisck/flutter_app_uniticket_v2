import 'package:flutter/material.dart';
import 'package:flutter_app_uniticket_v2/components/History_card.dart';
import 'package:flutter_app_uniticket_v2/components/History_model.dart';

class HistoryList extends StatelessWidget{
  final List<HistoryModel> historyy;
  HistoryList(this.historyy);

  @override
  Widget build(BuildContext context) {
    return _buildList(context);
  }
  ListView _buildList(context){
    return ListView.builder(
      itemCount: historyy.length,
      itemBuilder: (context, int){
        return HistoryCard(historyy[int]);
      },
    );
  }
}