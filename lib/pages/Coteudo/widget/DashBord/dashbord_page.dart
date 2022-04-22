import 'package:flutter/material.dart';

import 'widgets/mov_resumo.dart';

class DasbordPage extends StatefulWidget {
  const DasbordPage({Key? key}) : super(key: key);

  @override
  State<DasbordPage> createState() => _DasbordPageState();
}

class _DasbordPageState extends State<DasbordPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        color: Colors.transparent,
        child: Column(
        
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            
             ResumoMovimento(),
          ],
        ),
      ),
    );
  }
}
