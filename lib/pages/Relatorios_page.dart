import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RelatorioPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RelatorioPage();
}

class _RelatorioPage extends State<RelatorioPage> {
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

    return "Sucess!";
  }

  @override
  void initState(){
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: new ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder : (BuildContext context, int index){
          return new Card(
            child: new Text(data[index]["title"]),
          );
        }
      )
    );
  }
}
