import 'package:flutter/material.dart';
import 'package:flutter_app_uniticket_v2/components/payment_methods_model.dart';

class MetodoCard extends StatefulWidget{
  final Metodo metodos;
  MetodoCard(this.metodos);
  @override
  _MetodoCardState createState() => _MetodoCardState(metodos);
}

class _MetodoCardState extends State<MetodoCard> {
  Widget get metodocard{
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
              Text(widget.metodos.NumeroCartao, style: Theme.of(context).textTheme.headline),
              Text(widget.metodos.CodigoVerificacao, style: Theme.of(context).textTheme.subhead),
            ],
          ),        ///
        ),
      ),
    );
  }

  Metodo metodos;
  _MetodoCardState(this.metodos);
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
                child: metodocard,
              ),
            ],
          ),
        )
    );
  }
}