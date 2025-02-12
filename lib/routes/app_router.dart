import 'package:go_router/go_router.dart';
import 'package:gestion_de_flotas/pages/page1.dart';
import 'package:gestion_de_flotas/pages/page2.dart';
import 'package:gestion_de_flotas/pages/page3.dart';
import 'package:gestion_de_flotas/pages/welcome_page.dart';
import 'package:gestion_de_flotas/structure/dashboard.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/', // Ruta inicial
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => WelcomePage(),
      ),
      GoRoute(
        path: '/dashboard',
        builder: (context, state) => Dashboard(),
      ),
      GoRoute(
        path: '/page1',
        builder: (context, state) => Page1(),
      ),
      GoRoute(
        path: '/page2',
        builder: (context, state) => Page2(),
      ),
      GoRoute(
        path: '/page3',
        builder: (context, state) => Page3(),
      ),
    ],
  );
}
