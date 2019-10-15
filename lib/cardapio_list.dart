import 'package:flutter/material.dart';
import 'package:flutter_app_uniticket_v2/cardapio_card.dart';
import 'cardapio_model.dart';

class CardapioList extends StatelessWidget{
  final List<Cardapio> cardapios;
  CardapioList(this.cardapios);

  @override
  Widget build(BuildContext context) {
    return _buildList(context);
  }
  ListView _buildList(context){
    return ListView.builder(
      itemCount: cardapios.length,
      itemBuilder: (context, int){
        return CardapioCard(cardapios[int]);
      },
    );
  }
}