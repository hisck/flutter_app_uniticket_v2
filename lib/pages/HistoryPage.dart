import 'package:flutter/material.dart';
import 'package:flutter_app_uniticket_v2/components/History_model.dart';
import 'package:flutter_app_uniticket_v2/components/history_list.dart';

class HistoryPage extends StatelessWidget {

  List<HistoryModel> initHisstory = []
    ..add(HistoryModel('15', 'Rs 60.00', '22/05/2019', 'Compra'))
    ..add(HistoryModel('5', 'Rs 20,00', '23/08/2019', 'Compra'));


  HistoryPage();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        child: Center(
          child: HistoryList(initHisstory),
        ),
      ),
    );
  }
}
