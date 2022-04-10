import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widget/button_menu.dart';

class Menu extends StatefulWidget {
  final double screenWidget;

  const Menu({Key? key, required this.screenWidget}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    bool? visivel;
    double? scream;

    if (widget.screenWidget > 1100) {
      setState(() {
        scream = 280;
        visivel = true;
      });
    } else {
      setState(() {
        scream = 88;
        visivel = false;
      });
    }

    return SizedBox(
      height: 850,
      width: scream!,
      child: Card(
        elevation: 5,
        shadowColor: Colors.white,
        color: Colors.grey[300],
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 68,
              width: 400,
              child: Card(
                color: const Color.fromARGB(255, 197, 194, 194),
                child: Row(
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: Card(
                          color: Colors.grey.shade300,
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: const Center(
                            child: Icon(
                              Icons.supervised_user_circle,
                              size: 50,
                            ),
                          )),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8, right: 8, bottom: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Henriques Arrone",
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
                            Text(
                              "hjarrone@gmail.com",
                              style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                ButtonMenu(
                  btName: 'GERAL',
                  visivel: visivel!,
                ),
                ButtonMenu(
                  btName: 'CARTEIRAS',
                  visivel: visivel!,
                ),
                ButtonMenu(
                  btName: 'MOVIMENTOS',
                  visivel: visivel!,
                ),
                ButtonMenu(
                  btName: 'PLANEJADOS',
                  visivel: visivel!,
                ),
                ButtonMenu(
                  btName: 'PROJECTOS',
                  visivel: visivel!,
                ),
              ],
            ),
             SizedBox(
              height: 57,
              width: 400,
              child: Card(
                color: const Color.fromARGB(255, 197, 194, 194),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Card(
                        color: Colors.grey.shade300,
                        child: const Icon(
                          Icons.exit_to_app,
                          size: 40,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Visibility(
                      visible: visivel!,
                      child: Center(
                        child: Text(
                          'Sair',
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
