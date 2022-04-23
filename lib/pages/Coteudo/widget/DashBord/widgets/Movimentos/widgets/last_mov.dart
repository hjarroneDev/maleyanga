import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        Text(
          "   Ultimos Movimentos",
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
          height: MediaQuery.of(context).size.height -445,
          width: MediaQuery.of(context).size.width - 700 ,
          child: const Card(
            color: Color.fromARGB(181, 255, 255, 255),
          ),
        )
      ],
    );
  }
}
