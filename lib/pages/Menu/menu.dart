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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: 145,
                width: 400,
                child: Card(
                  color: const Color.fromARGB(255, 197, 194, 194),
                  child: Column(
                    children: [
                      Row(
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
                              padding: const EdgeInsets.only(
                                  top: 8, right: 8, bottom: 8),
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
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 80,
                            child: Card(
                              color: Colors.white,
                              child: InkWell(
                                hoverColor:
                                    const Color.fromARGB(97, 169, 230, 209),
                                onTap: () {},
                                child: const Icon(
                                  Icons.add_outlined,
                                  size: 40,
                                  color: Color.fromARGB(255, 138, 207, 184),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            child: Card(
                              color: Colors.white,
                              child: InkWell(
                                hoverColor:
                                    const Color.fromARGB(96, 230, 181, 169),
                                onTap: () {},
                                child: const Icon(
                                  Icons.remove,
                                  size: 40,
                                  color: Color.fromARGB(255, 218, 137, 137),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            child: Card(
                              color: Colors.white,
                              child: InkWell(
                                hoverColor:
                                    const Color.fromARGB(96, 169, 211, 230),
                                onTap: () {},
                                child: const Icon(
                                  Icons.compare_arrows_rounded,
                                  size: 40,
                                  color: Color.fromARGB(255, 138, 185, 207),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
