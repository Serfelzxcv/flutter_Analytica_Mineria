import 'package:flutter/material.dart';
import 'package:gestion_de_flotas/widgets/custom_app_bar.dart';
import 'package:gestion_de_flotas/widgets/custom_drawer.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Dashboard'),
      drawer: CustomDrawer(),
      body: Center(
        child: Text("Bienvenido al Dashboard"),
      ),
    );
  }
}
