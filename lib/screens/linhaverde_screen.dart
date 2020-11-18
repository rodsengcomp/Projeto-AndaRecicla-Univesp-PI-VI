import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class LinhaVerdeScreen extends StatefulWidget {
  @override
  _LinhaVerdeScreenState createState() => _LinhaVerdeScreenState();
}

class _LinhaVerdeScreenState extends State<LinhaVerdeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Linha Verde de Lixo Eletrônico"),
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
                  image: AssetImage('assets/images/linha_verde_screen.jpg'),
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
                    'Linha Verde de produtos eletrônicos tem vída útil curta',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListTile(
                  subtitle: Text(
                    'A vida útil média de alguns equipamentos de pequeno porte pode variar de ~2-5 anos.',
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
                  title: const Text('Na TI verde, três principais características chamam a atenção quanto o assunto é repensarmos nossa responsabilidade diante do panorama que envolve o lixo eletrônico.\n\n'
                      'Os equipamentos de informática possuem um alto índice de desuso por obsolescência, que devido as constantes inovações apresentadas em celulares, tablets, notebooks, entre outros, fabricados para acompanhar os avanços tecnológicos e com designers arrojados, despertam no consumidor a percepção provocada quanto a necessidade de estar atualizado ou antenado com o mercado, incentivando um certo consumismo, que deve ser repensado quanto a necessidade real de troca.\n\n'
                      'Há também os equipamentos inviabilizados por questões funcionais ou por descontinuidade de peças no mercado, o que comina na necessidade de nova compra.\n\n'
                      'Por fim, vale destacar a obsolescência dos equipamentos, que devido a sua baixa qualidade possuem o tempo de vida útil menor que alguns de sua categoria. Aqui vale a ressalva de refletir no custo/benefício ao se adquirir novos produtos.\n\n'
                      'Com isso, temos que não só a responsabilidade no descarte devido, tem o consumidor como principal personagem, mas também a engrenagem que envolve a quantidade crescente de equipamentos de informática lançados ao descarte ou desuso, quanto a escolha na aquisição destes que pode interferir no tempo de vida deste, no que tange sua qualidade, opções por reparos e, upgrades de peças que possam dar mais vida a estes equipamentos.\n\n'
                      'Chamados de technotrash, estes equipamentos contêm diversos tipos de materiais perigosos e nocivos à saúde humana e meio ambiente, como chumbo, cádmio, berílio, mercúrio, etc.\n\n'
                      'Contudo, tais equipamentos, possuem alto grau de reaproveitamento de seus materiais, tais como, plástico, metais, prata, outro, platina, entre outros, pelo qual vale total atenção e engajamento no descarte responsivo destes equipamentos para a devida tratativa pelas empresas especializadas do setor.\n\n'
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

