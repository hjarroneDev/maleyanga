import 'package:flutter/material.dart';
import 'widget/dashbord_page.dart';
import 'widget/definicao_page.dart';
import 'widget/movimentos_page.dart';
import 'widget/objectivos_page.dart';
import 'widget/planejados_page.dart';

class Painel extends StatefulWidget {
  final int page;
  const Painel({
    Key? key,
    required this.page,
  }) : super(key: key);

  @override
  State<Painel> createState() => _PainelState();
}

class _PainelState extends State<Painel> {
  int? _selectPage;

  final _pageActual = [
    const DasbordPage(),
    const MovimentosPage(),
    const PlanejadosPage(),
    const ObjectivosPage(),
    const DefinicoesPage(),
  ];

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              _pageActual[_selectPage!],
            ],
          )),
    );
  }
}
