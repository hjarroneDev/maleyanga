import 'package:flutter/material.dart';

class ContaWidget extends StatefulWidget {
  const ContaWidget({Key? key}) : super(key: key);

  @override
  State<ContaWidget> createState() => _ContaWidgetState();
}

class _ContaWidgetState extends State<ContaWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Stack(
        children: [
          SizedBox(
            height: 70,
            width: 400,
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  SizedBox(
                    height: 70,
                    width: 100,
                    child: Card(
                      color: Color.fromARGB(255, 173, 219, 228),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
