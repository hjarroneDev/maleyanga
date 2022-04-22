import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContaWidget extends StatefulWidget {
  final IconData iconConta;

  const ContaWidget({Key? key, required this.iconConta}) : super(key: key);

  @override
  State<ContaWidget> createState() => _ContaWidgetState();
}

class _ContaWidgetState extends State<ContaWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 0, left: 60, top: 1),
      child: SizedBox(
        height: 50,
        child: InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {},
          hoverColor: const Color.fromARGB(135, 76, 175, 120),
          child: Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  widget.iconConta,
                  size: 35,
                  color: const Color.fromARGB(181, 0, 0, 0),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: Text(
                      "111,001,000.54",
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                          fontSize: 20,
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
    );
  }
}
