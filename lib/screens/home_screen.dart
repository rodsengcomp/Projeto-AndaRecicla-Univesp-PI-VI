import 'package:flutter/material.dart';
import 'package:reciclaanda2/tabs/home_tab.dart';
import 'package:reciclaanda2/tabs/orders_tab.dart';
import 'package:reciclaanda2/tabs/places_tab.dart';
import 'package:reciclaanda2/tabs/products_tab.dart';
import 'package:reciclaanda2/tabs/quemsomos_tab.dart';
import 'package:reciclaanda2/widgets/cart_button.dart';
import 'package:reciclaanda2/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
          floatingActionButton: CartButton(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Descarte de Materiais"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: MateriaisTab(),
          floatingActionButton: CartButton(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Empresas de Reciclagens"),
            centerTitle: true,
          ),
          body: PlacesTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Retiradas Agendadas"),
            centerTitle: true,
          ),
          body: OrdersTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Quem Somos"),
            centerTitle: true,
          ),
          body: QuemSomos(),
          drawer: CustomDrawer(_pageController),
        )
      ],
    );
  }
}
