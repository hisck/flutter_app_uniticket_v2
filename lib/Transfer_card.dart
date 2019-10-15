import 'package:flutter/material.dart';
import 'Transfer_model.dart';

class TransferCard extends StatefulWidget{
  final Transfer transferencia;
  TransferCard(this.transferencia);
  @override
  _TransferCardState createState() => _TransferCardState(transferencia);
}

class _TransferCardState extends State<TransferCard> {
  Widget get transfercard{
    return Container(
      width: 400.0,
      height: 140.0,
      child: Card(
        color: Colors.lightBlue,
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
              Text(widget.transferencia.Amigo, style: Theme.of(context).textTheme.headline),
              Text(widget.transferencia.RA, style: Theme.of(context).textTheme.subhead),
            ],
          ),        ///
        ),
      ),
    );
  }

  Transfer transfer;
  _TransferCardState(this.transfer);
  @override
  Widget build(BuildContext context){
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 5.0),
        child: Container(
          height: 200.0,
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 50.0,
                child: transfercard,
              ),
            ],
          ),
        )
    );
  }
}
