import 'package:flutter/material.dart';
import 'dart:async';

class Painel extends StatefulWidget {
  final int page;
  const Painel({
    Key? key,
    required this.page,
  }) : super(key: key);

  @override
  State<Painel> createState() => _PainelState();
}

class _PainelState extends State<Painel> {
  PageController? _pageController;



  
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.page);
    
  }




 Stream<int> actualPage = (() async* {
  
    for (int i = 0; i <= 5; i++) {
      await Future<void>.delayed(const Duration(seconds: 1));
      yield i;
    }
  })();
  

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
          child: SizedBox(
            child: StreamBuilder<int>(
              stream: actualPage,
              builder: (
                BuildContext context,
                AsyncSnapshot<int> snapshot,
              ) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Visibility(
                    visible: false,
                    child: Text(
                      snapshot.data.toString(),
                      style: const TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  );
                } else if (snapshot.connectionState == ConnectionState.active ||
                    snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    return const Text('Error');
                  } else if (snapshot.hasData) {

                    if (_pageController!.hasClients) {
                      _pageController!.animateToPage(snapshot.data!,
                          duration: const Duration(microseconds: 4000),
                          curve: Curves.easeInOut);
                    }
                    return PageView(
                      controller: _pageController,
                      children: [
                        Container(
                          color: Colors.green.shade200,
                        ),
                        Container(
                          color: Colors.red.shade200,
                        ),
                        Container(
                          color: Colors.blue.shade200,
                        ),
                        Container(
                          color: Colors.yellow.shade200,
                        ),
                        Container(
                          color: Colors.grey.shade200,
                        ),
                      ],
                    );
                  } else {
                    return const Text('Empty data');
                  }
                } else {
                  return Text('State: ${snapshot.connectionState}');
                }
              },
            ),
          )),
    );
  }
}
