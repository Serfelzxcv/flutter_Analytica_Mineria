import 'package:flutter/material.dart';
import 'package:gestion_de_flotas/routes/app_router.dart';
import 'package:gestion_de_flotas/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Gestion de Flotas',
      theme: AppTheme.lightTheme,
      routerConfig: AppRouter.router,
    );
  }
}
