import 'package:flutter/material.dart';
import 'package:flutter_app_uniticket_v2/components/cardapio_model.dart';
import 'package:flutter_app_uniticket_v2/components/cardapio_list.dart';

class CardapioPage extends StatelessWidget {

  CardapioPage();

  List<Cardapio> initialCardapio = []
  ..add(Cardapio('Strogonofe de Frango', 'Arroz Branco/Integral', 'Feijão Carioca', 'Salada de tomate', 'Grão de Bico c/ PTS', 'Gelatina', 'Segunda-Feira'))
  ..add(Cardapio('Strogonofe de Frango', 'Arroz Branco/Integral', 'Feijão Carioca', 'Salada de tomate', 'Grão de Bico c/ PTS', 'Gelatina', 'Terça-Feira'))
  ..add(Cardapio('Strogonofe de Frango', 'Arroz Branco/Integral', 'Feijão Carioca', 'Salada de tomate', 'Grão de Bico c/ PTS', 'Gelatina', 'Quarta-Feira'))
  ..add(Cardapio('Strogonofe de Frango', 'Arroz Branco/Integral', 'Feijão Carioca', 'Salada de tomate', 'Grão de Bico c/ PTS', 'Gelatina', 'Quinta-Feira'))
  ..add(Cardapio('Strogonofe de Frango', 'Arroz Branco/Integral', 'Feijão Carioca', 'Salada de tomate', 'Grão de Bico c/ PTS', 'Gelatina', 'Sexta-Feira'));

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        child: Center(
          child: CardapioList(initialCardapio),
        ),
      ),
    );
  }
}
