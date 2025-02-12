import 'package:flutter/material.dart';

class HoverButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;

  const HoverButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.width = 150.0,
    this.height = 50.0,
  }) : super(key: key);

  @override
  _HoverButtonState createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool isHovered = false;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTapDown: (_) => setState(() => isPressed = true),
        onTapUp: (_) {
          setState(() => isPressed = false);
          widget.onPressed();
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            color: isPressed
                ? Colors.grey[900] // 🔴 En onPress: Fondo más oscuro
                : Colors.black, // 🔵 Normal: Fondo negro
            border: Border.all(
              color: isPressed
                  ? const Color.fromARGB(
                      255, 255, 255, 255)! // 🔴 En onPress: Borde más oscuro
                  : isHovered
                      ? const Color.fromARGB(255, 255, 108,
                          45) // 🟡 En onHover: Borde menos oscuro
                      : const Color.fromARGB(
                          255, 0, 0, 0), // 🟢 Normal: Borde gris
              width: 2,
            ),
            borderRadius:
                BorderRadius.circular(8), // 🔘 Borde redondeado moderado
          ),
          alignment: Alignment.center,
          child: Text(
            widget.text,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
