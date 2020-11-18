import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:reciclaanda2/screens/elixo_screen.dart';
import 'package:reciclaanda2/screens/linhaazul_screen.dart';
import 'package:reciclaanda2/screens/linhabranca_screen.dart';
import 'package:reciclaanda2/screens/linhamarron_screen.dart';
import 'package:reciclaanda2/screens/linhaverde_screen.dart';
import 'package:reciclaanda2/screens/linhaespecial_screen.dart';
import 'package:reciclaanda2/screens/lixoeletronico_screen.dart';
import 'package:reciclaanda2/screens/quemsomos_screen.dart';
import 'package:transparent_image/transparent_image.dart';


import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildBodyBack() => Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 34, 139, 34),
            Color.fromARGB(255, 152, 251, 152)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        );

    return Stack(
      children: <Widget>[
        _buildBodyBack(),
        CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text("Recicle seus eletrônicos"),
                centerTitle: true,
              ),
            ),
            FutureBuilder<QuerySnapshot>(
              future: Firestore.instance
                  .collection("home")
                  .orderBy("pos")
                  .getDocuments(),
              builder: (context, snapshot) {
                if (!snapshot.hasData)
                  return SliverToBoxAdapter(
                    child: Container(
                      height: 150.0,
                      alignment: Alignment.center,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    ),
                  );
                else
                  return SliverList(
                    delegate: SliverChildListDelegate([
                      Container(
                        child: Card(color: Colors.indigo,
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.accessibility),
                                title: const Text(
                                  'O que é Anda Recicla?',
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),
                                ),
                                tileColor: Colors.indigo.shade300,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Image.asset('assets/images/lixeiras-coleta-seletiva.jpg')
                              ),
                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: [
                                  FlatButton(
                                    textColor: Colors.white,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => QuemSomos()),
                                      );
                                    },
                                    child: const Text('SAIBA MAIS'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Card(color: Colors.grey,
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.accessibility),
                                title: const Text(
                                  'O que é lixo eletrônico?',
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black),
                                ),
                                tileColor: Colors.grey.shade300,
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset('assets/images/o_que_e_lixo_eletronico.jpg')
                              ),
                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: [
                                  FlatButton(
                                    textColor: Colors.black,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => LixoEletronico()),
                                      );
                                    },
                                    child: const Text('SAIBA MAIS'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Card(color: Colors.blue,
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.accessibility),
                                title: const Text(
                                    'Eletrônicos Linha Azul',
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),
                                ),
                                tileColor: Colors.blue.shade400,
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset('assets/images/linha_azuls.jpg')
                              ),
                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: [
                                  FlatButton(
                                    textColor: Colors.white,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => LinhaAzulScreen()),
                                      );
                                    },
                                    child: const Text('SAIBA MAIS'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Card(color: Colors.brown,
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.accessibility),
                                title: const Text(
                                  'Eletrônicos Linha Marrom',
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),
                                ),
                                tileColor: Colors.brown.shade400,
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset('assets/images/linha_marrom.jpg')
                              ),
                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: [
                                  FlatButton(
                                    textColor: Colors.white,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => LinhaMarromScreen()),
                                      );
                                    },
                                    child: const Text('SAIBA MAIS'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Card(color: Colors.green,
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.accessibility),
                                title: const Text(
                                  'Eletrônicos Linha Verde',
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),
                                ),
                                tileColor: Colors.green.shade400,
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset('assets/images/linha_verde.jpg')
                              ),
                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: [
                                  FlatButton(
                                    textColor: Colors.white,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => LinhaVerdeScreen()),
                                      );
                                    },
                                    child: const Text('SAIBA MAIS'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Card(color: Colors.white,
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.accessibility),
                                title: const Text(
                                  'Eletrônicos Linha Branca',
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black),
                                ),
                                tileColor: Colors.grey.shade300,
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset('assets/images/linha_branca.png')
                              ),
                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: [
                                  FlatButton(
                                    textColor: Colors.black,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => LinhaBrancaScreen()),
                                      );
                                    },
                                    child: const Text('SAIBA MAIS'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Card(color: Colors.red,
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.accessibility),
                                title: const Text(
                                  'Eletrônicos Linha Especial',
                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),
                                ),
                                tileColor: Colors.red.shade300,
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset('assets/images/linha_spacial.jpg')
                              ),
                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: [
                                  FlatButton(
                                    textColor: Colors.white,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => LinhaEspecialScreen()),
                                      );
                                    },
                                    child: const Text('SAIBA MAIS'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                    ]),
                  );
              },
            )
          ],
        )
      ],
    );
  }
}
