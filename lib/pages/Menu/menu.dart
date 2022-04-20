import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widget/menubut.dart';
import 'widget/movimento.dart';

class Menu extends StatefulWidget {
  final double screenWidget;

  const Menu({Key? key, required this.screenWidget}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool movVisivel = false;
  bool transfVisivel = false;
  Color movColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: SizedBox(
        width: 275,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 135,
                    width: 400,
                    child: Card(
                      color: const Color.fromARGB(255, 197, 194, 194),
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    height: 70,
                                    width: 80,
                                    child: InkWell(
                                      onTap: () {},
                                      child: Card(
                                        color: Colors.grey.shade300,
                                        semanticContainer: true,
                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                        child: const Center(
                                          child: Icon(
                                            Icons.account_box,
                                            size: 50,
                                            color: Color.fromARGB(181, 0, 0, 0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8, right: 8, bottom: 8, left: 8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
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
                              const SizedBox(
                                height: 5,
                              ),
                              const Divider(
                                height: 4,
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 70,
                              child: Card(
                                color: const Color.fromARGB(97, 169, 230, 209),
                                child: Card(
                                  color: Colors.white,
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (movVisivel == true &&
                                            movColor !=
                                                const Color.fromARGB(
                                                    97, 169, 230, 209)) {
                                          movColor = const Color.fromARGB(
                                              97, 169, 230, 209);
                                          transfVisivel = false;
                                        } else {
                                          movVisivel = !movVisivel;
                                          transfVisivel = false;
                                          movColor = const Color.fromARGB(
                                              97, 169, 230, 209);
                                        }
                                      });
                                    },
                                    hoverColor:
                                        const Color.fromARGB(97, 169, 230, 209),
                                    child: const Icon(
                                      Icons.add_outlined,
                                      size: 35,
                                      color: Color.fromARGB(255, 138, 207, 184),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 70,
                              child: Card(
                                color: const Color.fromARGB(96, 230, 181, 169),
                                child: Card(
                                  color: Colors.white,
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (movVisivel == true &&
                                            movColor !=
                                                const Color.fromARGB(
                                                    96, 230, 181, 169)) {
                                          movColor = const Color.fromARGB(
                                              96, 230, 181, 169);
                                          transfVisivel = false;
                                        } else {
                                          transfVisivel = false;
                                          movVisivel = !movVisivel;
                                          movColor = const Color.fromARGB(
                                              96, 230, 181, 169);
                                        }
                                      });
                                    },
                                    hoverColor:
                                        const Color.fromARGB(96, 230, 181, 169),
                                    child: const Icon(
                                      Icons.remove,
                                      size: 35,
                                      color: Color.fromARGB(255, 218, 137, 137),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 70,
                              child: Card(
                                color: const Color.fromARGB(96, 169, 211, 230),
                                child: Card(
                                  color: Colors.white,
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (movVisivel == true &&
                                            movColor !=
                                                const Color.fromARGB(
                                                    96, 169, 211, 230)) {
                                          transfVisivel = true;
                                          movColor = const Color.fromARGB(
                                              96, 169, 211, 230);
                                        } else {
                                          transfVisivel = true;
                                          movVisivel = !movVisivel;
                                          movColor = const Color.fromARGB(
                                              96, 169, 211, 230);
                                        }
                                      });
                                    },
                                    hoverColor:
                                        const Color.fromARGB(96, 169, 211, 230),
                                    child: const Icon(
                                      Icons.compare_arrows_rounded,
                                      size: 35,
                                      color: Color.fromARGB(255, 138, 185, 207),
                                    ),
                                  ),
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
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: movVisivel,
                      child: Movimento(
                        movColor: movColor,
                        transfVisivel: transfVisivel,
                      ),
                    ),
                    const Menubutoes(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
