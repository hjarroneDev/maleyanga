import 'package:flutter/material.dart';

import 'Coteudo/conteudo.dart';
import 'Menu/menu.dart';

class Dashbord extends StatefulWidget {
  const Dashbord({Key? key}) : super(key: key);

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromARGB(230, 212, 170, 170),
            Color.fromARGB(225, 169, 216, 223)
          ])),
      child: Row(
        children: [
          Column(
            children: [
              Expanded(
                child: Menu(screenWidget: screenWidth),
              ),
            ],
          ),
          // ignore: prefer_const_constructors
          Painel(
            page: 0,
          ),
        ],
      ),
    );
  }
}
