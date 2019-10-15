import 'package:flutter/material.dart';
import 'package:flutter_app_uniticket_v2/Transfer_model.dart';
import 'Transfer_list.dart';

class TransferPage extends StatelessWidget {
  final String title;

  TransferPage(this.title);

  List<Transfer> initTransfer = []
    ..add(Transfer('Luan Shiraishi Caetano', 'RA98907'))
    ..add(Transfer('Joao Paulo Bandolin', 'RA98929'));

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: Container(
          child: Center(
            child: TransferList(initTransfer),
          )
      ),
    );
  }
}
