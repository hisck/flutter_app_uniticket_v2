import 'package:flutter/material.dart';
import 'package:flutter_app_uniticket_v2/History_model.dart';
import 'history_list.dart';

class HistoryPage extends StatelessWidget {
  final String title;

  List<HistoryModel> initHisstory = []
    ..add(HistoryModel('15', 'Rs 60.00', '22/05/2019', 'Compra'))
    ..add(HistoryModel('5', 'Rs 20,00', '23/08/2019', 'Compra'));


  HistoryPage(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: Container(
        child: Center(
          child: HistoryList(initHisstory),
        ),
      ),
    );
  }
}
