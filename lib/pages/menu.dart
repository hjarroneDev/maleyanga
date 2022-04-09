import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Menu extends StatefulWidget {
  final double screenWidget;

  const Menu({Key? key, required this.screenWidget}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    double? scream;

    if (widget.screenWidget > 1100) {
      setState(() {
        scream = 280;
      });
    } else {
      setState(() {
        scream = 106;
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
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Column(
            children: [
              SizedBox(
                height: 80,
                width: 400,
                child: Card(

                  color: const Color.fromARGB(255, 197, 194, 194),
                  
                  child: Row(
                    children: [
                       Padding(
                        padding: const EdgeInsets.all(2),
                        child: SizedBox(
                          height: 70,
                          width: 70,
                          child: Card(
                            color:  Colors.grey.shade300,
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: const  Center(
                              child: Icon(
                                Icons.supervised_user_circle,
                                size: 60,
                              ),
                            )
                            

                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, right: 8, bottom: 8),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
