import 'package:flutter/material.dart';

class Painel extends StatefulWidget {
  const Painel({Key? key}) : super(key: key);

  @override
  State<Painel> createState() => _PainelState();
}

class _PainelState extends State<Painel> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                color: Colors.transparent,
                child: null,
              ),
            ),
          );
  }
}