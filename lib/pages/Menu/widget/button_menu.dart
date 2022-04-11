import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonMenu extends StatefulWidget {

  final String btName;
  final bool visivel;

  const ButtonMenu({Key? key, required this.btName, required this.visivel})
      : super(key: key);

  @override
  State<ButtonMenu> createState() => _ButtonMenuState();
}

class _ButtonMenuState extends State<ButtonMenu> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 57,
      width: 200,
      child: InkWell(
        onTap: () {
          
        },
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
                    Icons.data_usage_sharp,
                    size: 40,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Visibility(
                visible: widget.visivel,
                child: Center(
                  child: Text(
                    widget.btName,
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
      ),
    );
  }
}
