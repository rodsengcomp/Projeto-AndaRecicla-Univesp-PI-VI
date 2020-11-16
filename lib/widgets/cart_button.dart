import 'package:flutter/material.dart';
import 'package:reciclaanda2/screens/cart_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class CartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children:<Widget>[
        FloatingActionButton(
          child: Icon(Icons.add_location, color: Colors.white,),
          onPressed: (){
            launch("https://www.google.com/maps/search/empresas+de+reciclagem+de+lixo+eletronico+em+sp/@-23.5720643,-46.6759791,12z/data=!3m1!4b1 ");
          },
          heroTag: null,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        SizedBox(height: 10,),
        FloatingActionButton(
          child: Icon(Icons.add_alarm_rounded, color: Colors.white,),
          onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>CartScreen())
            );
          },
          heroTag: null,
          backgroundColor: Theme.of(context).primaryColor,
        ),
      ],
    );
  }
}
