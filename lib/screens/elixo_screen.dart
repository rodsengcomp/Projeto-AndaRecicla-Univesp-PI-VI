import 'package:flutter/material.dart';
import 'package:reciclaanda2/screens/home_screen.dart';
import 'package:scoped_model/scoped_model.dart';


class ElixoScreen extends StatefulWidget {
  @override
  _ElixoScreenState createState() => _ElixoScreenState();
}

class _ElixoScreenState extends State<ElixoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("O que é lixo eletrônico ou e-lixo "),
          centerTitle: true,
          actions: <Widget>[
          ],
        ),
        body: Container(
            child: const Image(
              image: NetworkImage('https://blog.betway.com/pt/media/width1220/17369/abre-ewaste-1_v2.png'),
            ),
        )
    );
  }
}
