import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class QuemSomos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Desenvolvedores - Anda Recicla",
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
                  image: AssetImage('assets/images/7_engineers.jpg'),
                ),
              ),
              Text('fonte: https://encrypted-tbn0.gstatic.com/',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 12,fontStyle: FontStyle.italic),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text(
                    'Estudantes de Engenharia na Univesp lançam proposta de aplicativo Anda Recicla para auxiliar o descarte de e-lixo',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListTile(
                  subtitle: Text(
                    'Os universitarios estão no 6º semestre cursando Engenharia de Computação na Universidade Virtual de São Paulo.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text(
                    'Olá sejam todos bem vindos, o aplicativo Anda Recicla faz parte de um projeto que integra os alunos ao 6º semestre na Universidade Virtual do Estado de São Paulo - Univesp.\n\n'
                    'O projeto tem como diretriz o desenvolvimento de um aplicativo para sistema android que auxilia na reciclagem do e-lixo. Desenvolvido na linguagem Flutter e com banco de dados em nuvem Firebase, o app busca auxiliar seus usuários no correto descarte de lixo eletrônico.\n\n'
                    'As páginas do app explicam sobre categorias e materias corretos para descarte, o app traz também um protótipo para que se solicite agendamento em empresa credenciada para retirada do material no local.\n\n'
                    'A API Goggle Maps também foi utilizada para localização de empresas de reciclagem e cards com os dados das empresas estão listados no menu "Empresas", além disso um botão nos cards leva as rotas via google maps para meios de transporte, distância, tempo de percurso e afins, outro botão integra API de chamada telefônica e ao clicar carrega o telefone da empresa para ligação.\n\n'
                    'Exite também um cadastro de login e senha, dados como nome,e-mail,endereço e cadastro de senha fazem parte dele, a opção "Esqueci minha senha" envia ao e-mail cadastrado um link para recuperação de senha.\n\n'
                    'Outro recurso implementado foi link para página da GREEN Eletron – Gestora para Logística Reversa de Equipamentos Eletroeletrônicos, com o objetivo principal de estruturar, implantar e gerenciar um sistema coletivo de logística reversa para que empresas associadas atendam à legislação.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 20),
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
                    if (await canLaunch("https://greeneletron.org.br/localizador")) {
                      await launch("https://greeneletron.org.br/localizador");
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text(
                    'Enfim explore use e abuso do aplicativo Anda Recicla, esperamos que todos gostem.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child:  InkWell(
                  child: Text("Clique aqui para acessar o projeto no GITHUB",
                    style: TextStyle(color: Colors.blue,fontStyle: FontStyle.italic,decoration: TextDecoration.underline,fontWeight: FontWeight.bold,fontSize: 20),
                  ),
                  onTap: () async {
                    if (await canLaunch("https://github.com/rodsengcomp/Projeto-AndaRecicla-Univesp-PI-VI")) {
                      await launch("https://github.com/rodsengcomp/Projeto-AndaRecicla-Univesp-PI-VI");
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text(
                    'Emails de Suporte: \n\n'
                    'Rodolfo: 1700493@aluno.univesp.br\n'
                    'Bruna: 1701715@aluno.univesp.br\n'
                    'Laís: 1705307@aluno.univesp.br\n'
                    'Patrícia: 1703723@aluno.univesp.br\n'
                    'Marcelo: 1704322@aluno.univesp.br\n'
                    'Regiane: 1715579@aluno.univesp.br\n',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
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
