import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class LixoEletronico extends StatefulWidget {
  @override
  _LixoEletronicoState createState() => _LixoEletronicoState();
}

class _LixoEletronicoState extends State<LixoEletronico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Lixo Eletrônico ou e-lixo",
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
                  image: AssetImage('assets/images/lixo_eletronico.jpg'),
                ),
              ),
              Text('fonte: https://conteudo.imguol.com.br/',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14,fontStyle: FontStyle.italic),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text(
                    'O que é lixo eletrônico ou e-lixo?',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListTile(
                  subtitle: Text(
                    'O descarte inadequado de lixo é um dos problemas da revolução tecnológica',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: ListTile(
                  title: const Text(
                    'O lixo eletrônico, também conhecido como e-lixo, é composto por produtos que não têm mais valor por falta de utilização, substituição ou quebra. A categoria inclui “produtos da linha branca”, como refrigeradores, máquinas de lavar e microondas, além de aparelhos eletrônicos como televisores, computadores, telefones celulares, tablets, drones, assim como pilhas, baterias, cartuchos e toners.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: ListTile(
                  subtitle: Text(
                    'Busque pontos de coleta',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                ),
              ),
              InkWell(
                child: Text("Veja aqui o que fica mais perto de onde você",
                style: TextStyle(color: Colors.blue,fontStyle: FontStyle.italic,decoration: TextDecoration.underline,fontWeight: FontWeight.bold,fontSize: 20),
                ),
                onTap: () async {
                  if (await canLaunch("https://greeneletron.org.br/localizador")) {
                    await launch("https://greeneletron.org.br/localizador");
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text(
                    'Muitas cidades já dispõem de iniciativas de coleta e reciclagem de resíduos eletrônicos. Por conta da pandemia, o ideal é separar o lixo eletrônico em casa e fazer o descarte seguindo as recomendações dos governos municipais e estaduais, relacionadas ao isolamento social.Em várias cidades no Estado de São Paulo e na capital, é possível encontrar pontos de entrega voluntária de lixo eletrônico. Veja aqui o que fica mais perto de onde você mora.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 20),
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


