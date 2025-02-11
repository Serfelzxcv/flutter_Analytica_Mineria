import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                 colors:[
                  Color.fromRGBO(56, 53, 53, 1),
                  Color.fromRGBO(56, 53, 53, 1),
                  Color.fromRGBO(255, 255, 255, 1)
                ]
                )
            ),
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 1,
                margin: EdgeInsets.only(top: 15, bottom: 15),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Column(
                      children: [
                        Center(
                          child: Container(
                            height: constraints.maxHeight*0.65, // Usa el alto del padre, no de la pantalla
                            color:Colors.cyan,
                            child: Image.asset(
                              'assets/images/minero.png',
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            height: constraints.maxHeight*0.15, // Usa el alto del padre, no de la pantalla
                            color: const Color.fromARGB(255, 252, 185, 181), // Para visualizar mejor
                            child: Image.asset(
                              'assets/images/analytica_logo.png',
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            height: constraints.maxHeight*0.1, // Usa el alto del padre, no de la pantalla
                            color: const Color.fromARGB(255, 107, 241, 130), // Para visualizar mejor
                          ),
                        ),
                        Center(
                          child: Container(
                            height: constraints.maxHeight*0.1, // Usa el alto del padre, no de la pantalla
                            color: const Color.fromARGB(108, 3, 68, 14), // Para visualizar mejor
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
    );
  }
}
