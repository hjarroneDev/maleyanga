import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'conta.dart';

class Contas extends StatefulWidget {
  const Contas({Key? key}) : super(key: key);

  @override
  State<Contas> createState() => _ContasState();
}

class _ContasState extends State<Contas> {
  bool contaVisivel = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Contas",
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
                  height: 60,
                  child: InkWell(
                    onTap: (() {
                      setState(() {
                        contaVisivel = !contaVisivel;
                      });
                    }),
                    borderRadius: BorderRadius.circular(5),
                    hoverColor: const Color.fromARGB(135, 76, 175, 120),
                    child: Card(
                      color: const Color.fromARGB(255, 236, 234, 234),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.account_balance_wallet,
                            size: 45,
                            color: Color.fromARGB(181, 0, 0, 0),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                              child: Text(
                                "111,001,000.54",
                                style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(181, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: contaVisivel,
            child: Column(
              children: const [
                ContaWidget(
                  iconConta: Icons.account_balance_wallet,
                ),
                ContaWidget(
                  iconConta: Icons.credit_card,
                ),
                ContaWidget(
                  iconConta: Icons.phone_android
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
