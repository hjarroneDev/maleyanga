import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Movimentos/widgets/Last/last_mov.dart';
import '../../Movimentos/widgets/Next/next_mov.dart';

class DetalhesConta extends StatefulWidget {
  const DetalhesConta({Key? key}) : super(key: key);

  @override
  State<DetalhesConta> createState() => _DetalhesContaState();
}

class _DetalhesContaState extends State<DetalhesConta> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "    Meus Detalhes",
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
        ),
        const Divider(
          height: 4,
        ),
        Container(
          height: MediaQuery.of(context).size.height - 41,
          width: MediaQuery.of(context).size.width,
          color: Colors.transparent,
          child: Card(
            color: const Color.fromARGB(181, 255, 255, 255),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                      const ProximosMovimento(),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const UltimoMovimento(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
