import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class QuemSomos extends StatefulWidget {
  @override
  _QuemSomosState createState() => _QuemSomosState();
}

class _QuemSomosState extends State<QuemSomos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Equipe 7 Engenheiros",
        ),
        centerTitle: true,
        actions: <Widget>[
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: const Image(
                  image: NetworkImage('https://s2.glbimg.com/WLII6LDhDPa8gKsqwfJRx9V1W-A=/0x0:950x600/1008x0/smart/filters:strip_icc()/s.glbimg.com/jo/g1/f/original/2011/11/09/ghana07.jpg'),
                ),
              ),
              Text('fonte: autor',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 12,fontStyle: FontStyle.italic),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text(
                    'Estudantes de Engenharia na Univesp lançam aplicativo para descarte de e-lixo',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListTile(
                  subtitle: Text(
                    'Os universitarios estão no 6º semestre cursando Engenharia de Computação na Universidade Virtual de São Paulo.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold,fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text(
                    'Se as regiões com a maior produção per capita de lixo eletrônico forem escurecidas num mapa mundi, ficará escuro na Europa, na América do Norte, na Austrália e na Nova Zelândia. Um americano gera, em média, mais de 19 kg de lixo eletrônico por ano. Um alemão, cerca de 23 kg, e um norueguês, até mesmo mais de 28 kg. Em todo o mundo são 53 milhões de toneladas de lixo eletrônico por ano, composto de todo tipo de aparelhos, como celulares, computadores, geladeiras e células fotovoltaicas, afirma o mais recente estudo sobre o tema, apresentado pela Universidade das Nações Unidas nesta quinta-feira (07).',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 14),
                  ),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  FlatButton(
                    textColor: Colors.white,
                    onPressed: () {
                      // Perform some action
                    },
                    child: const Text('SAIBA MAIS'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


