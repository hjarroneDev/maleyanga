import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          "    Detalhes",
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
         SizedBox(
          height: 365,
          width: MediaQuery.of(context).size.width ,
          child: const Card(
            color: Color.fromARGB(181, 255, 255, 255),
          ),
        )
      ],
    );
  }
}
