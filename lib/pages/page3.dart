
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _HomePageState();
}

class _HomePageState extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("page3")
    );
  }
}