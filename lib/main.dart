import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_app_uniticket_v2/cardapio_page.dart';
import 'package:flutter_app_uniticket_v2/Compra_page.dart';
import 'package:flutter_app_uniticket_v2/Transfer_page.dart';
import 'package:flutter_app_uniticket_v2/Relatorios_page.dart';
import 'package:flutter_app_uniticket_v2/payment_methods_page.dart';
import 'package:flutter_app_uniticket_v2/HistoryPage.dart';
import 'package:flutter_app_uniticket_v2/Transfer_page.dart';
import 'package:flutter_app_uniticket_v2/Adicao_cardapio_page.dart';

void main()=> runApp(new Uniticket());

class Uniticket extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.lightBlue),
      home: new HomePage(),
      //routes: <String, WidgetBuilder>{
        //"/a": (BuildContext context)=>new CardapioPage("Cardapio"),
      //}
      );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Uniticket"),
        elevation: defaultTargetPlatform == TargetPlatform.android?5.0:00,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Mateus Tenorio"),
              accountEmail: new Text("ra99829@uem.br"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Text("T"),
              ),
            ),
            new ListTile(
              title: new Text("Cardápio"),
              trailing: new Icon(Icons.restaurant_menu),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new CardapioPage("Cardapio")));
              },
            ),
            new ListTile(
              title: new Text("Comprar Tickets"),
              trailing: new Icon(Icons.money_off),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new CompraPage("Comprar Tickets")));
              },
            ),
            new ListTile(
              title: new Text("Transferencia"),
              trailing: new Icon(Icons.people),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new TransferPage("Transferir Tickets")));
              },
            ),
            new ListTile(
              title: new Text("Histórico"),
              trailing: new Icon(Icons.history),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new HistoryPage("Histórico")));
              },
            ),
            new ListTile(
              title: new Text("Pagamento"),
              trailing: new Icon(Icons.credit_card),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new MetodoPage("Métodos Pagamento")));
              },
            ),
            new Divider(),
            /*new ListTile(
              title: new Text("Relatórios"),
              trailing: new Icon(Icons.pie_chart),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new RelatorioPage("Relatórios")));
              },
            ),*/
            new ListTile(
              title: new Text("Adição Cardapio"),
              trailing: new Icon(Icons.edit),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new AdicaoPage("Adição Cardápio")));
              },
            ),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: ()=> Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: new Text("Quantidade de Tickets = 20"),
      //new QrImage(
        //data: "4",
        //size: 200.0,
    );
  }
}
