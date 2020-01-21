import 'package:flutter/material.dart';

class AdicaoPage extends StatelessWidget {

  TextEditingController nameController = TextEditingController();
  TextEditingController Acompanhamento1Controller = TextEditingController();
  TextEditingController Acompanhamento2Controller = TextEditingController();
  TextEditingController SaladaController = TextEditingController();
  TextEditingController VegetarianoController = TextEditingController();
  TextEditingController SobremesaController = TextEditingController();
  TextEditingController DataController = TextEditingController();


  AdicaoPage();

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
                          labelText: 'Prato Principal',
                        ),
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: TextField(
                        controller: Acompanhamento1Controller,
                        onChanged: (v) => Acompanhamento1Controller.text = v,
                        decoration: InputDecoration(
                          labelText: 'Acompanhamento 1',
                        ),
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: TextField(
                        controller: Acompanhamento2Controller,
                        onChanged: (v) => Acompanhamento2Controller.text = v,
                        decoration: InputDecoration(
                          labelText: 'Acompanhamento 2',
                        ),
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: TextField(
                        controller: SaladaController,
                        onChanged: (v) => SaladaController.text = v,
                        decoration: InputDecoration(
                          labelText: 'Salada',
                        ),
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: TextField(
                        controller: VegetarianoController,
                        onChanged: (v) => VegetarianoController.text = v,
                        decoration: InputDecoration(
                          labelText: 'Prato Vegetariano',
                        ),
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: TextField(
                        controller: SobremesaController,
                        onChanged: (v) => SobremesaController.text = v,
                        decoration: InputDecoration(
                          labelText: 'Sobremesa',
                        ),
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: TextField(
                        controller: DataController,
                        onChanged: (v) => DataController.text = v,
                        decoration: InputDecoration(
                          labelText: 'Data do prato',
                        ),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Builder(
                      builder: (context){
                        return RaisedButton(
                          onPressed: ()=> print('PRATO ADICIONADO'),
                          color: Colors.lightBlue,
                          child: Text('Adicionar Prato'),
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
