import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/class/pages_chage.dart';
import 'pages/Login/login_page.dart';


void main() => runApp(
  ChangeNotifierProvider(
    create: (_) => CurrentPage(),
    child: const MyApp(),)
 );


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:  LoginPage(
        ),
      ),
    );

  }
}
