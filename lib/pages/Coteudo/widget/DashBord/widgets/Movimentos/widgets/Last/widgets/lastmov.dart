import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetUltimoMovimento extends StatefulWidget {
  const WidgetUltimoMovimento({Key? key}) : super(key: key);

  @override
  State<WidgetUltimoMovimento> createState() => _WidgetUltimoMovimentoState();
}

class _WidgetUltimoMovimentoState extends State<WidgetUltimoMovimento> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    right: 5,
                    top: 2,
                  ),
                  child: SizedBox(
                    height: 45,
                    width: 45,
                    child: Card(
                      color: Colors.red.shade600,
                      child: const Center(
                        child: Icon(
                          Icons.currency_bitcoin,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5, top: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "M-Pesa",
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        "Recarga Vodacom",
                        style: GoogleFonts.roboto(
                          textStyle:
                              const TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 15,
                top: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "3,500.00",
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Center(
                        child: Icon(
                          Icons.arrow_upward,
                          size: 17,
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        "25%",
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            fontSize: 14,
                            //fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
         const Padding(
          padding:  EdgeInsets.only(right: 5, left: 5, top: 3, bottom: 2),
          child:  Divider(
            height: 1,
          ),
        )
      ],
    );
  }
}
