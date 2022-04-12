import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Movimento extends StatefulWidget {

  final Color movColor;
   const Movimento({Key? key, required this.movColor}) : super(key: key);

  @override
  State<Movimento> createState() => _MovimentoState();
}

class _MovimentoState extends State<Movimento> {
//AGENTE
  final agente = [
    "BCI",
    "BIM",
    "M-Pesa",
    "E-Mola",
    "Carteira",
  ];
  String? agenteValue;



  @override
  Widget build(BuildContext context) {
   
    return DelayedDisplay(
      delay: const Duration(milliseconds: 50),
      child: SizedBox(
        width: 400,
        child: Card(
          color: widget.movColor,
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8, right: 8, bottom: 8, left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Valor: ",
                                    style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 35,
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 38,
                                      child: TextField(
                                        style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                            fontSize: 17,
                                            color: Colors.black87,
                                          ),
                                        ),
                                        textAlign: TextAlign.start,
                                        textAlignVertical:
                                            TextAlignVertical.bottom,
                                        decoration: InputDecoration(
                                          hintText: 'Mtn',
                                          hintStyle: GoogleFonts.roboto(
                                              color: Colors.black26),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          enabledBorder: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey, width: 0.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Conta: ",
                                    style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color.fromARGB(88, 104, 102, 102),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton<String>(
                                          icon: const Visibility(
                                              visible: false,
                                              child: Icon(Icons.arrow_downward)),
                                          borderRadius: BorderRadius.circular(8),
                                          value: agenteValue,
                                          isExpanded: true,
                                          hint: const Text(
                                            "  Select",
                                          ),
                                          items:
                                              agente.map(buildMenuItem).toList(),
                                          onChanged: (value) => setState(
                                            () => agenteValue = value,
                                          ),
                                        ),
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
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //Situação CORESPONDENCIA
  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          '   $item',
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      );
}
