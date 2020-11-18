import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class LinhaEspecialScreen extends StatefulWidget {
  @override
  _LinhaEspecialScreenState createState() => _LinhaEspecialScreenState();
}

class _LinhaEspecialScreenState extends State<LinhaEspecialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Linha Especial de Lixo Eletrônico"),
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
                  image: AssetImage('assets/images/linha_spacial.jpg'),
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
                    'Linha Especial de produtos eletrônicos - Lâmpadas Fluorescentes',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListTile(
                  subtitle: Text(
                    'Com a proibição das lâmpadas incandescentes no Brasil desde 2016, o consumo das lâmpadas fluorescentes se tornou significativas no mercado.',
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
                  title: const Text('As lâmpadas fluorescentes não devem ser descartadas no lixo comum e nem destinadas a aterros sanitários, pois o mercúrio presente em sua composição, é um contaminante químico, que requer cuidados especiais.\n\n'
                      'O processo de logística reversa das lâmpadas inclui o gerenciamento das seguintes etapas: coleta, transporte, triagem, consolidação e tratamento na indústria de reciclagem.\n\n'
                      'Este documento trata sobre o recolhimento, tratamento e disposição final de lâmpadas fluorescentes de vapor de sódio e mercúrio e de luz mista.\n\n'
                      'A orientação geral é que lâmpadas fluorescentes em seu descarte devido, sejam armazenadas na embalagem original e, sem quebrá-la.\n\n'
                      'O consumidor deve levá-la ao ponto de coleta mais próximo ou verificar empresas especializadas quanto a retirada destas, mediantes regras e orientações a serem verificadas junto a empresa responsável.\n\n'
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

