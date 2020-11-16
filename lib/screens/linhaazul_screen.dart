import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class LinhaAzulScreen extends StatefulWidget {
  @override
  _LinhaAzulScreenState createState() => _LinhaAzulScreenState();
}

class _LinhaAzulScreenState extends State<LinhaAzulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("O que é lixo eletrônico ou e-lixo "),
          centerTitle: true,
          actions: <Widget>[
          ],
        ),
        body: Container(
          child: const Image(
            image: NetworkImage('https://blog.betway.com/pt/media/width1220/17369/abre-ewaste-1_v2.png'),
          ),
        )
    );
  }
}

class NewsApi{

  String url = "https://raw.githubusercontent.com/RafaelBarbosatec/tutorial_flutter_medium/master/api/news.json";

  Future <List> loadNews() async{
    // Make a HTTP GET request to the CoinMarketCap API.
    // Await basically pauses execution until the get() function returns a Response
    try{
      http.Response response = await http.get(url);
      // Using the JSON class to decode the JSON String
      const JsonDecoder decoder = const JsonDecoder();
      return decoder.convert(response.body);

    } on Exception catch(_){
      return null;
    }

  }

}

