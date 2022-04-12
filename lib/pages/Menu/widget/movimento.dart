import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Movimento extends StatefulWidget {
  
  const Movimento({Key? key}) : super(key: key);

  @override
  State<Movimento> createState() => _MovimentoState();
}

class _MovimentoState extends State<Movimento> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                                Icons.supervised_user_circle,
                                size: 50,
                              ),
                            )),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 8, right: 8, bottom: 8, left: 8),
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
    );
  }
}
