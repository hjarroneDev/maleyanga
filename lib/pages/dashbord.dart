import 'package:flutter/material.dart';


class Dashbord extends StatefulWidget {
  const Dashbord({Key? key}) : super(key: key);

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan[100],
      child: Center(
        child: SizedBox(
          height: 750,
          width: 1400,
          child: Card(
            elevation: 8,
            shadowColor: Colors.cyan[200],
            margin: const EdgeInsets.all(20),
            child: null,
          ),
        ),
      ),
    );
  }
}
