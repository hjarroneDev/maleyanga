import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButaoMenu extends StatefulWidget {
  final IconData iconConta;
  final String botaoName;
  final bool visivelOn;
  final VoidCallback onTap;

   const ButaoMenu({Key? key, required this.iconConta, required this.botaoName, required this.visivelOn, required this.onTap})
      : super(key: key);

  @override
  State<ButaoMenu> createState() => _ButaoMenuState();
}

class _ButaoMenuState extends State<ButaoMenu> {
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.only(right: 00, left: 00, top: 1),
      child: SizedBox(
        height: 50,
        child: InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: widget.onTap,
          hoverColor: const Color.fromARGB(135, 76, 175, 120),
          child: Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: Icon(
                    widget.iconConta,
                    size: 35,
                    color: const Color.fromARGB(181, 0, 0, 0)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: Text(
                      widget.botaoName,
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(181, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
                ],),
                 SizedBox(
                  width: 20,
                  height: 70,
                  child: Visibility(
                    visible: widget.visivelOn,
                    child: const Card(
                      color:  Color.fromARGB(135, 76, 175, 120),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
