import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          "    Planejados",
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
          width: 378 ,
          child: const Card(
            color: Color.fromARGB(181, 255, 255, 255),
          ),
        )
      ],
    );
  }
}
