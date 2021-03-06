import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetProximoMovimento extends StatefulWidget {
  const WidgetProximoMovimento({Key? key}) : super(key: key);

  @override
  State<WidgetProximoMovimento> createState() => _WidgetProximoMovimentoState();
}

class _WidgetProximoMovimentoState extends State<WidgetProximoMovimento> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5, top: 1),
      child: SizedBox(
        height: 43,
        width: 1000,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          height: 41,
                          width: 41,
                          child: Card(
                            color: Colors.red,
                            child: Icon(
                              Icons.currency_bitcoin,
                              size: 31,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "M-Pesa",
                              style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Text(
                              "Recarga Vodacom",
                              style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                    fontSize: 14, color: Colors.black87),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Receberei",
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                              fontSize: 17,
                              // fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Text(
                          "25 Jan 2022",
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              //fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
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
                   
                  ],
                ),
              ),
              const Padding(
          padding:  EdgeInsets.only(right: 5, left: 5,),
          child:  Divider(
            height: 1,
          ),
        )
            ],
          ),
        ),
      ),
    );
  }
}
