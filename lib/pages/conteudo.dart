import 'package:flutter/material.dart';

class Painel extends StatefulWidget {
  final int page;
  final bool visvelDashboard;
  final bool visivelMovimentos;
  final bool visivelPlanejados;
  final bool visivelObjectivos;
  final bool visivelDefinicoes;
  const Painel(
      {Key? key,
      required this.page,
      required this.visvelDashboard,
      required this.visivelMovimentos,
      required this.visivelPlanejados,
      required this.visivelObjectivos,
      required this.visivelDefinicoes})
      : super(key: key);

  @override
  State<Painel> createState() => _PainelState();
}

class _PainelState extends State<Painel> {
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Scaffold(
          body: PageView(
            controller: _pageController,
            children: [
              
              InkWell(
                child: Container(
                  color: Colors.green.shade200,
                ),
                onTap: () {
                  if (_pageController!.hasClients) {
                    _pageController!.animateToPage(1,
                        duration: const Duration(microseconds: 4000),
                        curve: Curves.easeInOut);
                  }
                },
              ),
              InkWell(
                child: Container(
                  color: Colors.red.shade200,
                ),
                onTap: () {
                  if (_pageController!.hasClients) {
                    _pageController!.animateToPage(2,
                        duration: const Duration(microseconds: 4000),
                        curve: Curves.easeInOut);
                  }
                },
              ),
              InkWell(
                child: Container(
                  color: Colors.blue.shade200,
                ),
                onTap: () {
                  if (_pageController!.hasClients) {
                    _pageController!.animateToPage(3,
                        duration: const Duration(microseconds: 4000),
                        curve: Curves.easeInOut);
                  }
                },
              ),
              InkWell(
                child: Container(
                  color: Colors.yellow.shade200,
                ),
                onTap: () {
                  if (_pageController!.hasClients) {
                    _pageController!.animateToPage(4,
                        duration: const Duration(microseconds: 4000),
                        curve: Curves.easeInOut);
                  }
                },
              ),
              InkWell(
                child: Container(
                  color: Colors.grey.shade200,
                ),
                onTap: () {
                  if (_pageController!.hasClients) {
                    _pageController!.animateToPage(0,
                        duration: const Duration(microseconds: 4000),
                        curve: Curves.easeInOut);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
