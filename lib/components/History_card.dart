import 'package:flutter/material.dart';
import 'package:flutter_app_uniticket_v2/components/History_model.dart';

class HistoryCard extends StatefulWidget{
  final HistoryModel history;
  HistoryCard(this.history);
  @override
  _HistoryCardState createState() => _HistoryCardState(history);
}

class _HistoryCardState extends State<HistoryCard> {
  Widget get history{
    return Container(
      width: 400.0,
      height: 140.0,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            bottom: 10.0,
            left:20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(widget.history.Data, style: Theme.of(context).textTheme.headline),
              Text(widget.history.Quantidade, style: Theme.of(context).textTheme.subhead),
              Text(widget.history.Valor, style: Theme.of(context).textTheme.subhead),
              Text(widget.history.tipo, style: Theme.of(context).textTheme.subhead),
            ],
          ),        ///
        ),
      ),
    );
  }

  HistoryModel hhistory;
  _HistoryCardState(this.hhistory);
  @override
  Widget build(BuildContext context){
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 5.0),
        child: Container(
          height: 140.0,
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 25.0,
                child: history,
              ),
            ],
          ),
        )
    );
  }
}