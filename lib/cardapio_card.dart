import 'package:flutter/material.dart';
import 'package:flutter_app_uniticket_v2/cardapio_model.dart';

class CardapioCard extends StatefulWidget{
  final Cardapio cardapio;
  CardapioCard(this.cardapio);
  @override
  _CardapioCardState createState() => _CardapioCardState(cardapio);
}

class _CardapioCardState extends State<CardapioCard> {
  Widget get cardapiocard{
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
            Text(widget.cardapio.PratoPrincipal, style: Theme.of(context).textTheme.subhead),
            Text(widget.cardapio.Acompanhamento1, style: Theme.of(context).textTheme.subhead),
            Text(widget.cardapio.Acompanhamento2, style: Theme.of(context).textTheme.subhead),
            Text(widget.cardapio.Salada, style: Theme.of(context).textTheme.subhead),
            Text(widget.cardapio.Vegetariano, style: Theme.of(context).textTheme.subhead),
            Text(widget.cardapio.sobremesa, style: Theme.of(context).textTheme.subhead),
            ],
          ),        ///
        ),
      ),
    );
  }

  Cardapio cardapio;
  _CardapioCardState(this.cardapio);
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
              child: cardapiocard,
            ),
            Positioned(top:7.5, child: Text(widget.cardapio.Dia_semana, style: Theme.of(context).textTheme.headline)),
          ],
        ),
      )
    );
  }
}