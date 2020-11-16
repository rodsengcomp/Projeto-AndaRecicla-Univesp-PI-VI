import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:reciclaanda2/screens/elixo_screen.dart';
import 'package:reciclaanda2/screens/linhaazul_screen.dart';
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
                      height: 200.0,
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
                        child: Card(color: Colors.blue,
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.accessibility),
                                title: const Text(
                                    'Linha Azul',
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),
                                ),
                                tileColor: Colors.blue.shade400,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  'Batedeiras, secadores de cabelo, liquidificadores, ferros elétricos, furadeiras, multiprocessadoras, aquecedores, aspiradores de pó, cafeteiras, centrífugas, máquinas de costura, máquinas de escrever, torradeiras, vaporizadores, ventiladores de mesa, ventiladores de chão, videogames, karaokês, agendas eletrônicas, barbeadores, calculadoras, câmeras fotográficas digitais, microfones, fones de ouvido.',
                                  style: TextStyle(color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold,fontSize: 18),
                                ),
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
                                  'Linha Marrom',
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),
                                ),
                                tileColor: Colors.brown.shade400,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  'Monitores e TVs LCDs, plasma e LED, equipamentos de áudio e home theaters, projetores (data-show), filmadoras e câmeras digitais, aparelhos de VHS, DVD, blu-ray, impressoras de diversos tamanhos.',
                                  style: TextStyle(color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold,fontSize: 20),
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
