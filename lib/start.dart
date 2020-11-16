import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:reciclaanda2/models/cart_model.dart';
import 'package:reciclaanda2/models/user_model.dart';
import 'package:reciclaanda2/screens/home_screen.dart';
import 'package:scoped_model/scoped_model.dart';

class Start extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: UserModel(),
      child: ScopedModelDescendant<UserModel>(
          builder: (context, child, model){
            return ScopedModel<CartModel>(
              model: CartModel(model),
              child: MaterialApp(
                  title: "Anda Recicla",
                  theme: ThemeData(
                      primarySwatch: Colors.green,
                      primaryColor: Color.fromARGB(255, 0,128,0)
                  ),
                  debugShowCheckedModeBanner: false,
                  home: IntroScreen()
              ),
            );
          }
      ),
    );
  }
}

// Testando StateScreen

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  SwiperController _controller = SwiperController();
  int _currentIndex = 0;
  final List<String> titles = [
    "Bem Vindo",
    "Menu Anda Recicla",
    "Agendamento de retirada",
    "Locais de Descarte"
  ];
  final List<String> subtitles = [
    "Aqui você encontra uma nova forma de reciclar seu lixo eletrônico !!!",
    "Acesse o menu lateral para agendar retirada de e-lixo e consultar locais de descarte",
    "Solicite um agendamento para retirada de e-lixo da sua casa por uma empresa cadastrada",
    "Você pode levar seu lixo eletrônico em empresas cadastradas no aplicativo"
  ];
  final List<Color> colors = [
    Colors.green.shade400,
    Colors.green.shade400,
    Colors.green.shade400,
    Colors.green.shade400,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Swiper(
            loop: false,
            index: _currentIndex,
            onIndexChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            controller: _controller,
            pagination: SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                activeColor: Colors.black38,
                activeSize: 20.0,
              ),
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return IntroItem(
                title: titles[index],
                subtitle: subtitles[index],
                bg: colors[index],
                imageUrl: "assets/images/intoscreen_${index + 1}.png",
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: FlatButton(
              child: Text("Pular",
                style: (TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold))
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              icon:
              Icon(_currentIndex == 3 ? Icons.check : Icons.arrow_forward),
              onPressed: () {
                if (_currentIndex != 3) {
                  _controller.next();
                } else{
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}

class IntroItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color bg;
  final String imageUrl;

  const IntroItem(
      {Key key, @required this.title, this.subtitle, this.bg, this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bg ?? Theme.of(context).primaryColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 40),
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                    color: Colors.white),
              ),
              if (subtitle != null) ...[
                const SizedBox(height: 20.0),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                  textAlign: TextAlign.center,
                ),
              ],
              const SizedBox(height: 40.0),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 70),
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Material(
                      elevation: 4.0,
                      child: Image.asset(
                        imageUrl,
                        fit: BoxFit.cover,
                      ),),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

