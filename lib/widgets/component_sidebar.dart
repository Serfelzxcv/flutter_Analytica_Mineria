import 'package:flutter/material.dart';
import 'package:gestion_de_flotas/widgets/sidebar_item.dart';


// Constantes en un archivo separado o al inicio del archivo
const double kCollapsedWidth = 78;
const double kExpandedWidth = 200;
const double kSidebarPadding = 17.0;
const Duration kAnimationDuration = Duration(milliseconds: 300);

class ComponentSidebar extends StatefulWidget {
  final Function(String) onPageSelected;
  final bool isCollapsed;
  final VoidCallback onToggle;

  const ComponentSidebar({
    super.key,
    required this.onPageSelected,
    required this.isCollapsed,
    required this.onToggle,
  });

  @override
  State<ComponentSidebar> createState() => _ComponentSidebarState();
}

class _ComponentSidebarState extends State<ComponentSidebar> {
  String? hoveredItem;
  bool showText = false;
  bool showSecondImage = false;

  @override
  void didUpdateWidget(ComponentSidebar oldWidget) {
    super.didUpdateWidget(oldWidget);
    _handleSidebarAnimation();
  }

  void _handleSidebarAnimation() {
    if (!widget.isCollapsed) {
      Future.delayed(kAnimationDuration, () {
        if (mounted && !widget.isCollapsed) {
          setState(() {
            showText = true;
            showSecondImage = true;
          });
        }
      });
    } else {
      setState(() {
        showText = false;
        showSecondImage = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      width: widget.isCollapsed ? kCollapsedWidth : kExpandedWidth,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 235, 235, 235),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          _buildHeader(),
          const Divider(height: 1, thickness: 1, color: Colors.black),
          _buildMenuTitle(),
          const Divider(height: 1, thickness: 1, color: Colors.grey),
          _buildMenuItems(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 12, 12, 12),
        border: Border(
          bottom: BorderSide(color: Colors.white, width: 1),
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Image.asset('assets/images/image_1.png', width: 40, height: 40),
          if (showSecondImage) ...[
            const SizedBox(width: 8),
            Image.asset('assets/images/image_2.png', width: 80, height: 40),
          ],
        ],
      ),
    );
  }

  Widget _buildMenuTitle() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Text(
        "MENU${(!widget.isCollapsed && showText) ? " PRINCIPAL" : ""}",
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
      ),
    );
  }

  Widget _buildMenuItems() {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(kSidebarPadding),
        itemCount: SidebarItem.items.length,
        itemBuilder: (context, index) {
          final item = SidebarItem.items[index];
          return _buildMenuItem(item);
        },
      ),
    );
  }

  Widget _buildMenuItem(SidebarItem item) {
    final bool isHovered = hoveredItem == item.title;
    
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: MouseRegion(
        onEnter: (_) => setState(() => hoveredItem = item.title),
        onExit: (_) => setState(() => hoveredItem = null),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: isHovered ? Colors.grey[300] : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Icon(item.icon, color: Colors.black),
              if (showText)
                Padding(
                  padding: const EdgeInsets.only(left: 8,),
                  child: Text(
                    item.title,
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}