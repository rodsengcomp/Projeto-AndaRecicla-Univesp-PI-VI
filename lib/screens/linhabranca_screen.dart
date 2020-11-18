import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class LinhaBrancaScreen extends StatefulWidget {
  @override
  _LinhaBrancaScreenState createState() => _LinhaBrancaScreenState();
}

class _LinhaBrancaScreenState extends State<LinhaBrancaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Linha Branca de Lixo Eletrônico"),
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
                  image: AssetImage('assets/images/linha_branca_screen.jpg'),
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
                    'Linha Branca de produtos eletrônicos tem vída útil média',
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
                  title: const Text('Os eletroeletrônicos de uso doméstico abrangem os equipamentos de baixo alto e/ou dimensão cujo os componentes podem ser facilmente desmontados e ser reaproveitados para outros tipos de produtos ou até mesmo para fins de reciclagem total.\n\n'
                                    '\n\n'
                                    '\n\n'
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

