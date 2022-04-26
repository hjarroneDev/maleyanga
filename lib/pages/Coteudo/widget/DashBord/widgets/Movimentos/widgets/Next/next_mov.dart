import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/nextmov.dart';

class ProximosMovimento extends StatefulWidget {
  const ProximosMovimento({Key? key}) : super(key: key);

  @override
  State<ProximosMovimento> createState() => _ProximosMovimentoState();
}

class _ProximosMovimentoState extends State<ProximosMovimento> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "  Planejados",
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height - 445,
          width: MediaQuery.of(context).size.width - 750,
          child: Column(
            children: const [
              WidgetProximoMovimento(),
              WidgetProximoMovimento(),
              WidgetProximoMovimento(),
              WidgetProximoMovimento(),
              WidgetProximoMovimento(),
              WidgetProximoMovimento(),
            ],
          ),
        )
      ],
    );
  }
}
