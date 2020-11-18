import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class LinhaMarromScreen extends StatefulWidget {
  @override
  _LinhaMarromScreenState createState() => _LinhaMarromScreenState();
}

class _LinhaMarromScreenState extends State<LinhaMarromScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Linha Marrom de Lixo Eletrônico"),
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
                  image: AssetImage('assets/images/linha_marrom_screen.jpg'),
                ),
              ),
              Text('fonte: https://noticias.portaldaindustria.com.br/',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 12,fontStyle: FontStyle.italic),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text(
                    'Linha Marrom de produtos eletrônicos tem vída útil média',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListTile(
                  subtitle: Text(
                    'A vida útil média de alguns equipamentos de médio porte pode variar de ~5-13 anos.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child:  InkWell(
                  child: Text("Clique aqui para descartar seu lixo eletrônico",
                    style: TextStyle(color: Colors.blue,fontStyle: FontStyle.italic,decoration: TextDecoration.underline,fontWeight: FontWeight.bold,fontSize: 20),
                  ),
                  onTap: () async {
                    if (await canLaunch("https://www.greeneletron.org.br/")) {
                      await launch("https://www.greeneletron.org.br/");
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text('Os eletroeletrônicos de uso doméstico abrangem os equipamentos que dependem de correntes elétricas (tensão nominal) igual ou inferior a 240 volts.\n\n'
                                    'Os eletroeletrônicos quando obsoletos ou ao seu término da vida útil são por vezes descartados sem os devidos critérios, ocasionando riscos de contaminação a natureza e a vida humana.\n\n'
                                    'Vale ressaltar que é, de inteira responsabilidade do consumidor efetuar a destinação correta e/ou descarte destes equipamentos, a fim de que o fabricante e empresas especializadas, devidamente autorizadas, possam realizar a destinação final destes produtos e/ou materiais, conforme o caso, cumprindo o clico de logística reversa para este fim.\n\n'
                                    'Os produtos eletrônicos de descarte incluem todos os seus componentes acessórios, bem como os materiais consumíveis necessários para sua operação/funcionamento.\n\n'
                                    'O app ANDA RECICLA, facilita a busca de as empresas especializadas e regulamentadas, mais próximos do local informado, para um descarte ambientalmente correto, seguro e fácil. Cidadão faça sua parte!\n\n'
                                    '*Para informações sobre serviços de coleta, consulte diretamente as empresas especializadas mais próxima de sua localidade.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

