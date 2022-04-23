import 'package:flutter/material.dart';

import 'widgets/last_mov.dart';
import 'widgets/next_mov.dart';

class ResumoMovimento extends StatefulWidget {
  const ResumoMovimento({Key? key}) : super(key: key);

  @override
  State<ResumoMovimento> createState() => _ResumoMovimentoState();
}

class _ResumoMovimentoState extends State<ResumoMovimento> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        UltimoMovimento(),
        ProximosMovimento()
      ],
    );
  }
}
