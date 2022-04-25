import 'package:flutter/material.dart';

import 'widgets/Movimentos/mov_resumo.dart';
import 'widgets/Resumo/widgets/conta_detalhe.dart';

class DasbordPage extends StatefulWidget {
  const DasbordPage({Key? key}) : super(key: key);

  @override
  State<DasbordPage> createState() => _DasbordPageState();
}

class _DasbordPageState extends State<DasbordPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            DetalhesConta(),
            SizedBox(height: 14,),
            ResumoMovimento(),
          ],
        ),
      ),
    );
  }
}
