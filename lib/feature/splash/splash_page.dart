import 'package:app_troca_livro/feature/home/home_page.dart';
import 'package:flutter/material.dart';

import '../../colors.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    navegarParaHome();
  }

  void navegarParaHome() {
    Future.delayed(Duration(seconds: 2)).then((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(
            title: "Título qualquer",
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Troca Livro",
            style: TextStyle(color: VERMELHO, fontSize: 40),
          ),
        ),
        color: PRETO,
      ),
    );
  }
}
