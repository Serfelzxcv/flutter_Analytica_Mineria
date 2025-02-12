import 'package:flutter/material.dart';
import 'package:gestion_de_flotas/gen/assets.gen.dart';
import 'package:gestion_de_flotas/gen/fonts.gen.dart';
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
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromRGBO(56, 53, 53, 1),
              Color.fromRGBO(56, 53, 53, 1),
              Color.fromRGBO(255, 255, 255, 1)
            ])),
        child: Stack(
          children:[
            Positioned.fill(
              child: Column(
                children: [
                  Expanded(
                    flex: 1, 
                    child: Opacity(
                      opacity: 0.25,
                      child: Assets.images.fondoMining.image(
                        fit: BoxFit.fill,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1, // 50% de la pantalla con fondo transparente
                    child: Container(
                      // ignore: deprecated_member_use
                      color: Colors.white.withOpacity(0), // Transparente
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Column(
                      children: [
                      Center(
                          child: SizedBox(
                            height: constraints.maxHeight *
                                0.1, // Usa el alto del padre, no de la pantalla
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            height: constraints.maxHeight *
                                0.5, // Usa el alto del padre, no de la pantalla
                            child: Assets.images.minero.image(
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            height: constraints.maxHeight *
                                0.17, // Usa el alto del padre, no de la pantalla
                            child: Assets.images.analyticaLogo.image(
                            )
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            height: constraints.maxHeight *
                                0.05, // Usa el alto del padre, no de la pantalla
                            child: Text(
                                "Monitorea, gestiona y optimiza tu flota minera",
                                style: TextStyle(
                                  fontFamily: FontFamily.mavenPro,
                                  fontWeight: FontWeight.w600,
                                  fontSize:18
                                ),
                                ), // Para visualizar mejor
                          ),
                        ),
                        Container(
                          height: constraints.maxHeight * 0.03,
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
        ]),
      ),
    );
  }
}
