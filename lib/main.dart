import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_app_uniticket_v2/pages/cardapio_page.dart';
import 'package:flutter_app_uniticket_v2/pages/Compra_page.dart';
import 'package:flutter_app_uniticket_v2/pages/HistoryPage.dart';
import 'package:flutter_app_uniticket_v2/pages/payment_methods_page.dart';
import 'package:flutter_app_uniticket_v2/pages/Relatorios_page.dart';
import 'package:flutter_app_uniticket_v2/pages/Transfer_page.dart';
import 'package:flutter_app_uniticket_v2/pages/Adicao_cardapio_page.dart';
import 'package:flutter_app_uniticket_v2/pages/Home_page.dart';

void main()=> runApp(new Uniticket());

class Uniticket extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        '/homepage': (BuildContext context) => new HomePage(),
        '/compraticket' : (BuildContext context) => CompraPage(),
      },
      home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue
      )
    );
  }
}

class LoginPage extends StatefulWidget{
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{

  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState(){
    super.initState();
    _iconAnimationController = new AnimationController(
      vsync: this,
      duration: new Duration(milliseconds: 500)
    );
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController,
        curve: Curves.easeOut
    );
    _iconAnimation.addListener(()=> this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.black26,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/logo.jpg"),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             new FlutterLogo(
               size:100.0,
             ),
             new Form(
               child: new Theme(
                 data: new ThemeData(brightness: Brightness.dark, primarySwatch: Colors.teal,
                     inputDecorationTheme: new InputDecorationTheme(labelStyle: new TextStyle(
                       color:Colors.teal, fontSize: 20.0
                     )) ),
                 child: new Container(
                 padding: const EdgeInsets.all(40.0),
                  child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Email :",
                  ),
                  keyboardType: TextInputType.emailAddress,
                      ),
                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Senha :",
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                new Padding(
                  padding: const EdgeInsets.only(top:20.0),
                ),
                new MaterialButton(
                  height: 40.0,
                  minWidth: 100.0,
                  color: Colors.teal,
                  textColor: Colors.white,
                  child: new Text("Login"),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/homepage');
                  },
                  splashColor: Colors.redAccent,
                )
                    ],
                  ),
                  )
                 )
                )
              ]
            ),
          ],
        ),
      );
  }
}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{
  int _selectedPage = 2;
  final _pageOptions = [
    CardapioPage(),
    TransferPage(),
    MyHomePage(),
    MetodoPage(),
    HistoryPage(),
    CompraPage(),
    AdicaoPage()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: new Text("Uniticket"),
        ),
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedPage,
            onTap: (int index){
            setState((){
              _selectedPage = index;
            });
            },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.restaurant),
              title: Text('Cardápio')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.money_off),
                title: Text('Transferência')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.credit_card),
                title: Text('Metodo')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.receipt),
                title: Text('Histórico')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.money_off),
                title: Text('Compra_Ticket')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.receipt),
                title: Text('Histórico')
            ),
          ],
        ),
      ),
    );
  }
}