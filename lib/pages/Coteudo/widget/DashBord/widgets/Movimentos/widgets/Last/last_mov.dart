import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/lastmov.dart';

class UltimoMovimento extends StatefulWidget {
  const UltimoMovimento({Key? key}) : super(key: key);

  @override
  State<UltimoMovimento> createState() => _UltimoMovimentoState();
}

class _UltimoMovimentoState extends State<UltimoMovimento> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 5,
        ),
        Text(
          "  Movimentos Recentes",
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
        ),
      
        Expanded(
          child: SizedBox(
            width: 291,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white,
                child: ListView.builder(
                  itemCount: 25,
                  itemBuilder: (context, index) {
                    return const WidgetUltimoMovimento();
                  },
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
