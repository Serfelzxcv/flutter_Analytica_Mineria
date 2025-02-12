import 'package:flutter/material.dart';
import 'package:gestion_de_flotas/widgets/components/buttons.dart';

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
                colors: [
              Color.fromRGBO(56, 53, 53, 1),
              Color.fromRGBO(56, 53, 53, 1),
              Color.fromRGBO(255, 255, 255, 1)
            ])),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.6,
            margin: EdgeInsets.only(top: 15, bottom: 15),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  children: [
                    Center(
                      child: SizedBox(
                        height: constraints.maxHeight *
                            0.6, // Usa el alto del padre, no de la pantalla
                        child: Image.asset(
                          'assets/images/minero.png',
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        height: constraints.maxHeight *
                            0.2, // Usa el alto del padre, no de la pantalla
                        child: Image.asset(
                          'assets/images/analytica_logo.png',
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        height: constraints.maxHeight *
                            0.05, // Usa el alto del padre, no de la pantalla
                        child: Text(
                            "Monitorea, gestiona y optimiza tu flota minera"), // Para visualizar mejor
                      ),
                    ),
                    Container(
                      height: constraints.maxHeight * 0.01,
                    ),
                    Center(
                      child: HoverButton(
                        text: "Ingresar",
                        onPressed: () {
                          print("Botón presionado");
                        },
                        width: constraints.maxWidth * 0.15,
                        height: constraints.maxHeight * 0.05,
                      ),
                    )
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
