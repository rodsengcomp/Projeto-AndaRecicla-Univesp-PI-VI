import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:reciclaanda2/screens/elixo_screen.dart';
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
                  return SliverFixedExtentList(
                    itemExtent: 200,
                    delegate: SliverChildListDelegate([
                      Container(
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Image(
                                width: 400,
                              height: 70,
                              fit:BoxFit.fill,
                              image: NetworkImage('https://i0.wp.com/imperiobateriassantos.com.br/wp-content/uploads/2018/06/Imp%C3%A9rio-Baterias-Santos-05-2018-A-melhor-maneira-de-evitar-o-descarte-irregular-da-bateria-de-carro-A.jpg'),
                              ),
                              const ListTile(
                                leading: Icon(Icons.electrical_services),
                                title: Text('O que é Lixo Eletrônico ?'),
                                subtitle: Text('Saiba tudo sobre o e-lixo e seu destino.'),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  const SizedBox(width: 8),
                                  TextButton(
                                    child: const Text('SAIBA MAIS'),
                                    onPressed: () {
                                      Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ElixoScreen()),
                                      );
                                    },
                                  ),
                                  const SizedBox(width: 8),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Image(
                                width: 400,
                                height: 70,
                                fit:BoxFit.fill,
                                image: NetworkImage('https://i0.wp.com/imperiobateriassantos.com.br/wp-content/uploads/2018/06/Imp%C3%A9rio-Baterias-Santos-05-2018-A-melhor-maneira-de-evitar-o-descarte-irregular-da-bateria-de-carro-A.jpg'),
                              ),
                              const ListTile(
                                leading: Icon(Icons.electrical_services),
                                title: Text('O que é Lixo Eletrônico ?'),
                                subtitle: Text('Saiba tudo sobre o e-lixo e seu destino.'),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  const SizedBox(width: 8),
                                  TextButton(
                                    child: const Text('SAIBA MAIS'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => ElixoScreen()),
                                      );
                                    },
                                  ),
                                  const SizedBox(width: 8),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Image(
                                width: 400,
                                height: 70,
                                fit:BoxFit.fill,
                                image: NetworkImage('https://i0.wp.com/imperiobateriassantos.com.br/wp-content/uploads/2018/06/Imp%C3%A9rio-Baterias-Santos-05-2018-A-melhor-maneira-de-evitar-o-descarte-irregular-da-bateria-de-carro-A.jpg'),
                              ),
                              const ListTile(
                                leading: Icon(Icons.electrical_services),
                                title: Text('O que é Lixo Eletrônico ?'),
                                subtitle: Text('Saiba tudo sobre o e-lixo e seu destino.'),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  const SizedBox(width: 8),
                                  TextButton(
                                    child: const Text('SAIBA MAIS'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => ElixoScreen()),
                                      );
                                    },
                                  ),
                                  const SizedBox(width: 8),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Image(
                                width: 400,
                                height: 70,
                                fit:BoxFit.fill,
                                image: NetworkImage('https://i0.wp.com/imperiobateriassantos.com.br/wp-content/uploads/2018/06/Imp%C3%A9rio-Baterias-Santos-05-2018-A-melhor-maneira-de-evitar-o-descarte-irregular-da-bateria-de-carro-A.jpg'),
                              ),
                              const ListTile(
                                leading: Icon(Icons.electrical_services),
                                title: Text('O que é Lixo Eletrônico ?'),
                                subtitle: Text('Saiba tudo sobre o e-lixo e seu destino.'),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  const SizedBox(width: 8),
                                  TextButton(
                                    child: const Text('SAIBA MAIS'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => ElixoScreen()),
                                      );
                                    },
                                  ),
                                  const SizedBox(width: 8),
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
