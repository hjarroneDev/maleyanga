import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../login_page.dart';
import 'butao.dart';

class Menubutoes extends StatefulWidget {
  const Menubutoes({Key? key}) : super(key: key);

  @override
  State<Menubutoes> createState() => _MenubutoesState();
}

class _MenubutoesState extends State<Menubutoes> {
  bool visvelDashboard = true;
  bool visivelMovimentos = false;
  bool visivelPlanejados = false;
  bool visivelObjectivos = false;
  bool visivelDefinicoes = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
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
            ButaoMenu(
              iconConta: Icons.dashboard_rounded,
              botaoName: 'Dashboard',
              visivelOn: visvelDashboard,
              onTap: () {
                setState(() {
                  visvelDashboard = true;
                  visivelMovimentos = false;
                  visivelPlanejados = false;
                  visivelObjectivos = false;
                  visivelDefinicoes = false;
                });
              },
            ),
            ButaoMenu(
              iconConta: Icons.exposure,
              botaoName: 'Movimentos',
              visivelOn: visivelMovimentos,
              onTap: () {
                setState(() {
                  visvelDashboard = false;
                  visivelMovimentos = true;
                  visivelPlanejados = false;
                  visivelObjectivos = false;
                  visivelDefinicoes = false;
                });
              },
            ),
            ButaoMenu(
              iconConta: Icons.today,
              botaoName: 'Planejados',
              visivelOn: visivelPlanejados,
              onTap: () {
                setState(() {
                  visvelDashboard = false;
                  visivelMovimentos = false;
                  visivelPlanejados = true;
                  visivelObjectivos = false;
                  visivelDefinicoes = false;
                });
              },
            ),
            ButaoMenu(
              iconConta: Icons.ballot,
              botaoName: 'Objectivos',
              visivelOn: visivelObjectivos,
              onTap: () {
                setState(() {
                  visvelDashboard = false;
                  visivelMovimentos = false;
                  visivelPlanejados = false;
                  visivelObjectivos = true;
                  visivelDefinicoes = false;
                });
              },
            ),
            ButaoMenu(
              iconConta: Icons.settings_applications,
              visivelOn: visivelDefinicoes,
              botaoName: 'Definições',
              onTap: () {
                setState(() {
                  visvelDashboard = false;
                  visivelMovimentos = false;
                  visivelPlanejados = false;
                  visivelObjectivos = false;
                  visivelDefinicoes = true;
                });
              },
            ),
            ButaoMenu(
              iconConta: Icons.exit_to_app,
              visivelOn: false,
              botaoName: 'Terminar',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginPage();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
