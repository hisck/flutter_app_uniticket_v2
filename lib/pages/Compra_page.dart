import 'package:flutter/material.dart';

class CompraPage extends StatelessWidget {

  TextEditingController nameController = TextEditingController();

  CompraPage();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 32.0,
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                  controller: nameController,
                  onChanged: (v) => nameController.text = v,
                  decoration: InputDecoration(
                    labelText: 'Quant tickets (Obs : valor * 4))',
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Builder(
                  builder: (context){
                    return RaisedButton(
                      onPressed: ()=> print('COMPRA CONFIRMADA'),
                      color: Colors.lightBlue,
                      child: Text('Confirmar compra'),
                    );
                  },
                ),
      )
            ],
          )
        )
      ),
    );
  }
}
