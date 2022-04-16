import 'package:flutter/material.dart';

import 'conta.dart';

class Contas extends StatefulWidget {
  const Contas({Key? key}) : super(key: key);

  @override
  State<Contas> createState() => _ContasState();
}

class _ContasState extends State<Contas> {
  @override
  Widget build(BuildContext context) {
    return  Column(

      children: const [
        ContaWidget(),
        ContaWidget(),
        ContaWidget(),
        ContaWidget(),
      ],
    );
  }
}
