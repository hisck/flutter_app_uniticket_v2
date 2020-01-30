import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RelatorioPage extends StatelessWidget {
 
  List data;

  Future<String> getData() async{
    var response = await http.get(
      Uri.encodeFull(""),
      headers: {
        "Accept" : "application/json"
      }
    );

    this.setState((){
      data = json.decode(response.body);
    });
    
    print(data[1]["title"]);

    return "Sucess!";
  }

  @override
  void initState(){
    this.getData();
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: new ListView.builder(
        itemCount: data == null ? 0 : data.lenght,
        itemBuilder : (BuildContext context, int index){
          return new Card(
            child: new Text(data[index]["title"]),
          );
        }
      )
    ),
  }
}
