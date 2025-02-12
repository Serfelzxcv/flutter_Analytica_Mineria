import 'package:flutter/material.dart';
import 'package:gestion_de_flotas/routes/app_router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Gestion de Flotas',
      routerConfig: AppRouter.router,
    );
  }
}
