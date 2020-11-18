import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: const Image(
                  image: AssetImage('assets/images/card_home.png'),
                ),
              ),
              Text('fonte: https://www.hypeverde.com.br/',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 12,fontStyle: FontStyle.italic),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text(
                    'Aplicativo Anda Recicla desenvolvido por estudantes de Engenharia de Computação na Univesp',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListTile(
                  subtitle: Text(
                    'Os universitarios Rodolfo, Bruna, Laís, Patrícia, Marcelo e Regiane desenvolveram o aplicativo que auxilia na reciclagem do e-lixo.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text(
                    'O Anda Recicla é um aplicativo para celulares com sistema operacional android, o app traz informações sobre reciclagem de lixo eletrônico ou e-lixo como é mais conhecido, traz também o conceito de solicitações de retirada desses materias por possíveis empresas devidamente credenciadas nos órgãos responsáveismeio e também no app, o descarte consciente traz benefícios a todos e ao planeta. Criado e desenvolvido por sete alunos do curso de Engenharia de Computação na Universidade Virtual do Estado de São Paulo (UNIVESP), é desenvolvido como parte de um Projeto Integrador da grade de ensino da Universidade. O projeto tem como objetivo divulgar informações sobre as diversas questões relativas ao descarte de e-lixo , com ênfase na redução, reaproveitamento e reciclagem de resíduos eletrônicos.',
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
