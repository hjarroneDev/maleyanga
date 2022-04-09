import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dashbord.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 870;

  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  @override
  Widget build(BuildContext context) {
    bool visivel = false;
    double heigtSizedLogIn = 320;

    if (visivel == false) {
      heigtSizedLogIn = 246;
    }

    return Scaffold(
      
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [ Color.fromARGB(230, 212, 170, 170), Color.fromARGB(225, 169, 216, 223)])),
      
        child: Expanded(
          child: DelayedDisplay(
            delay: const Duration(seconds: 3),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: heigtSizedLogIn,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.only(),
                      child: Card(
                        color: Colors.grey[300],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: SizedBox(
                                  height: 40,
                                  width: 300,
                                  child: TextField(
                                    style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                        fontSize: 17,
                                        color: Colors.black87,
                                      ),
                                    ),
                                    textAlign: TextAlign.start,
                                    textAlignVertical: TextAlignVertical.bottom,
                                    decoration: InputDecoration(
                                      hintText: 'Email',
                                      hintStyle: GoogleFonts.roboto(
                                          color: Colors.black26),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 0.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Center(
                                child: SizedBox(
                                  height: 40,
                                  width: 300,
                                  child: TextField(
                                    style: GoogleFonts.roboto(
                                      textStyle: const TextStyle(
                                        fontSize: 17,
                                        color: Colors.black87,
                                      ),
                                    ),
                                    obscureText: true,
                                    textAlign: TextAlign.start,
                                    textAlignVertical: TextAlignVertical.bottom,
                                    decoration: InputDecoration(
                                      hintText: 'Password',
                                      hintStyle: GoogleFonts.roboto(
                                          color: Colors.black26),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 0.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              SizedBox(
                                height: 35,
                                width: 300,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: const Size.fromHeight(30),
                                      primary: const Color.fromARGB(255, 131, 203, 212)),
                                  child: FittedBox(
                                    child: Text(
                                      'Log In',
                                      style: GoogleFonts.roboto(
                                        textStyle: const TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {

                                    Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const Dashbord();
                                  },
                                ),
                              );
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Esqueceu a pass?',
                                  style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                      fontSize: 17,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  shadowColor: Colors.transparent,
                                ),
                              ),
                              Visibility(
                                visible: visivel,
                                child: Column(
                                  children: [
                                    const Divider(
                                      color: Colors.black26,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 40,
                                      width: 150,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            fixedSize:
                                                const Size.fromHeight(30),
                                            primary: Colors.green[200]),
                                        child: FittedBox(
                                          child: Text(
                                            'Nova Conta',
                                            style: GoogleFonts.roboto(
                                              textStyle: const TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
