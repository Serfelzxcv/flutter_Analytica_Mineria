import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final Function(String) onPageSelected;

  const CustomDrawer({super.key, required this.onPageSelected});

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
              onPageSelected('/dashboard'); // Enviar la ruta en lugar de un widget
              Navigator.of(context).pop(); // Cerrar el Drawer
            },
          ),
          ListTile(
            title: Text('Page1'),
            leading: Icon(Icons.start),
            onTap: () {
              onPageSelected('/page1');
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: Text('Page2'),
            leading: Icon(Icons.safety_check_outlined),
            onTap: () {
              onPageSelected('/page2');
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: Text('Page3'),
            leading: Icon(Icons.access_alarm_rounded),
            onTap: () {
              onPageSelected('/page3');
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
