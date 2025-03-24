import 'package:flutter/material.dart';
import 'package:gestion_de_flotas/widgets/component_sidebar.dart'; // tu nuevo DataTableWidget basado en data_table_2

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isCollapsed = true;
  String? hoveredItem;
  bool isHovering = false;

  /// Ejemplo de títulos de columna.
  final List<String> columnTitles = [
    "Nombre",
    "Edad",
    "País",
    "Profesión",
    "Años Exp.",
    "Salario"
  ];

  /// Ejemplo de contenido: cada sublista es una fila.
  final List<List<dynamic>> tableData = [
    ["Alice", 25, "USA", "Desarrolladora", 3, "\$75,000"],
    ["Bob", 30, "Reino Unido", "Diseñador", 5, "£40,000"],
    ["Charlie", 35, "Canadá", "Analista", 7, "CAD 60,000"],
    ["Julia", 31, "Francia", "Gerente de Proy.", 4, "€50,000"],
    ["Ana", 29, "España", "QA Tester", 3, "€35,000"],
    ["Pedro", 40, "México", "Arquitecto de SW", 10, "\$90,000"],
    ["Alice", 25, "USA", "Desarrolladora", 3, "\$75,000"],
    ["Bob", 30, "Reino Unido", "Diseñador", 5, "£40,000"],
    ["Charlie", 35, "Canadá", "Analista", 7, "CAD 60,000"],
    ["Julia", 31, "Francia", "Gerente de Proy.", 4, "€50,000"],
    ["Ana", 29, "España", "QA Tester", 3, "€35,000"],
    ["Pedro", 40, "México", "Arquitecto de SW", 10, "\$90,000"],
    ["Alice", 25, "USA", "Desarrolladora", 3, "\$75,000"],
    


  ];

  void toggleCollapse() {
    setState(() {
      isCollapsed = !isCollapsed;
      hoveredItem = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              ComponentSidebar(
                isCollapsed: isCollapsed,
                onToggle: toggleCollapse, onPageSelected: (String ) {  },
              ),
            ],
          ),

          // Botón animado para colapsar
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            left: isCollapsed ? 65 : 185,
            top: 20,
            child: GestureDetector(
              onTap: toggleCollapse,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(66, 0, 0, 0),
                      blurRadius: 5,
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
                child: isCollapsed
                    ? const Icon(Icons.arrow_forward,
                        color: Color.fromARGB(255, 0, 0, 0), size: 12)
                    : const Icon(Icons.arrow_back,
                        color: Color.fromARGB(255, 0, 0, 0), size: 12),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
// tengo un problema, mi tabla tiene muchas columnas y pocas filas , el problemas es que el scroll horizontal solo funciona cuando el scroll vertical está presente , caso contrario no aparece , pero como tengo pocas filas no aparece el scroll vertical y porende tampoco el horizontal lo que impide que vea las demas columnas 