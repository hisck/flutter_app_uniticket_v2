import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {

  TransferPage();

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.black26,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
                                  labelText: "Valor :",
                                ),
                                keyboardType: TextInputType.number,
                              ),
                              new Padding(
                                padding: const EdgeInsets.only(top:20.0),
                              ),
                              new MaterialButton(
                                height: 40.0,
                                minWidth: 100.0,
                                color: Colors.teal,
                                textColor: Colors.white,
                                child: new Text("Transferir"),
                                onPressed: () {
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
