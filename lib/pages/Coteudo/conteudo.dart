import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../class/pages_chage.dart';
import 'widget/dashbord_page.dart';
import 'widget/definicao_page.dart';
import 'widget/movimentos_page.dart';
import 'widget/objectivos_page.dart';
import 'widget/planejados_page.dart';

class Pages extends StatelessWidget {
  final PageController _pageController = PageController(initialPage: 0);

  Pages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Expanded(
        child: Consumer<CurrentPage>(builder: (ctx, currentPage, widget) {
          final pageView = PageView(
            // ignore: avoid_types_as_parameter_names
            onPageChanged: (int) {},
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            pageSnapping: true,
            children: const [
              DasbordPage(),
              MovimentosPage(),
              PlanejadosPage(),
              ObjectivosPage(),
              DefinicoesPage(),
            ],
          );

          if (_pageController.hasClients) {
            _pageController.animateToPage(currentPage.currentPage,
                duration: const Duration(microseconds: 4000),
                curve: Curves.easeInOut);
          }
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 311,
                child: pageView,
              ),
            ),
          );
        }),
      ),
    );
  }
}
