

import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _HomePageState();
}

class _HomePageState extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("page1")
    );
  }
}