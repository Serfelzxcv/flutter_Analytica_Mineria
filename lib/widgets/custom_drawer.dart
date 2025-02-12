import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('Menú', style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            title: Text('Inicio'),
            leading: Icon(Icons.home),
            onTap: () {
              context.go('/dashboard'); // Solo cambia la ruta
            },
          ),
          ListTile(
            title: Text('Page1'),
            leading: Icon(Icons.start),
            onTap: () {
              context.go('/page1'); // Cambia la ruta sin hacer pop
            },
          ),
          ListTile(
            title: Text('Page2'),
            leading: Icon(Icons.safety_check_outlined),
            onTap: () {
              context.go('/page2');
            },
          ),
          ListTile(
            title: Text('Page3'),
            leading: Icon(Icons.access_alarm_rounded),
            onTap: () {
              context.go('/page3');
            },
          ),
        ],
      ),
    );
  }
}
