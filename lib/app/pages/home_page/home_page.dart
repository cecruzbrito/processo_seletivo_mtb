import 'package:flutter/material.dart';

import 'controller/home_ctr.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeCtr homeCtr = HomeCtr();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [],
      ),
    );
  }
}
