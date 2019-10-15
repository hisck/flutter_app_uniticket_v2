import 'package:flutter/material.dart';
import 'package:flutter_app_uniticket_v2/cardapio_model.dart';
import 'cardapio_list.dart';

class CardapioPage extends StatelessWidget {
  final String title;

  CardapioPage(this.title);

  List<Cardapio> initialCardapio = []
  ..add(Cardapio('Strogonofe de Frango', 'Arroz Branco/Integral', 'Feijão Carioca', 'Salada de tomate', 'Grão de Bico c/ PTS', 'Gelatina', 'MON'))
  ..add(Cardapio('Strogonofe de Frango', 'Arroz Branco/Integral', 'Feijão Carioca', 'Salada de tomate', 'Grão de Bico c/ PTS', 'Gelatina', 'TUE'))
  ..add(Cardapio('Strogonofe de Frango', 'Arroz Branco/Integral', 'Feijão Carioca', 'Salada de tomate', 'Grão de Bico c/ PTS', 'Gelatina', 'WED'))
  ..add(Cardapio('Strogonofe de Frango', 'Arroz Branco/Integral', 'Feijão Carioca', 'Salada de tomate', 'Grão de Bico c/ PTS', 'Gelatina', 'THU'))
  ..add(Cardapio('Strogonofe de Frango', 'Arroz Branco/Integral', 'Feijão Carioca', 'Salada de tomate', 'Grão de Bico c/ PTS', 'Gelatina', 'FRI'));

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: Container(
        child: Center(
          child: CardapioList(initialCardapio),
        )
      ),
    );
  }
}
