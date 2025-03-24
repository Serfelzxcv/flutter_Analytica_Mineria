import 'package:flutter/material.dart';
import 'package:gestion_de_flotas/pages/home_page.dart';
import 'package:gestion_de_flotas/pages/page1.dart';
import 'package:gestion_de_flotas/pages/page2.dart';
import 'package:gestion_de_flotas/pages/page3.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // Mantenemos la ruta actual seleccionada
  String _selectedRoute = '/dashboard';

  // Función para cambiar de ruta sin perder el estado del Drawer
  void _changePage(String route) {
    setState(() {
      _selectedRoute = route;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Definir qué Widget mostrar basado en la ruta actual
    Widget getPageWidget(String route) {
      switch (route) {
        case '/page1':
          return Page1();
        case '/page2':
          return Page2();
        case '/page3':
          return Page3();
        default:
          return Home();
      }
    }

    return Scaffold(
      body: getPageWidget(_selectedRoute), // Mostramos la página seleccionada
    );
  }
}
