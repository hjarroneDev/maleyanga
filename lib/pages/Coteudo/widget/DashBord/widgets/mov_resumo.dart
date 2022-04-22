import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResumoMovimento extends StatefulWidget {
  const ResumoMovimento({Key? key}) : super(key: key);

  @override
  State<ResumoMovimento> createState() => _ResumoMovimentoState();
}

class _ResumoMovimentoState extends State<ResumoMovimento> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Last Movimentos",
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
        ),
        const Divider(
          height: 4,
        ),
         SizedBox(
          height: MediaQuery.of(context).size.height -45,
          width: MediaQuery.of(context).size.width ,
          child: const Card(
            color: Color.fromARGB(181, 255, 255, 255),
          ),
        )
      ],
    );
  }
}
