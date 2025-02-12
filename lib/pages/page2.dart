
import 'package:flutter/material.dart';


class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _HomePageState();
}

class _HomePageState extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("page2")
    );
  }
}