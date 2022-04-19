import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'butao.dart';

class Menubutoes extends StatefulWidget {
  const Menubutoes({Key? key}) : super(key: key);

  @override
  State<Menubutoes> createState() => _MenubutoesState();
}

class _MenubutoesState extends State<Menubutoes> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Menu",
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
            const ButaoMenu(
              iconConta: Icons.dashboard_rounded,
              botaoName: 'Dashboard',
            ),
            const ButaoMenu(
              iconConta: Icons.exposure,
              botaoName: 'Movimentos',
            ),
            const ButaoMenu(
              iconConta: Icons.today,
              botaoName: 'Planejados',
            ),
            const ButaoMenu(
              iconConta: Icons.ballot,
              botaoName: 'Objectivos',
            ),
            const ButaoMenu(
              iconConta: Icons.settings_applications,
              botaoName: 'Definições',
            ),
            const ButaoMenu(
              iconConta: Icons.exit_to_app,
              botaoName: 'Terminar',
            )
          ],
        ),
      ),
    );
  }
}
