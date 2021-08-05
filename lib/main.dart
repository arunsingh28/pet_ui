import 'package:flutter/material.dart';
import 'screen/Drawer.dart';
import 'screen/Home.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [DrawerScreen(), Home()],
      ),
    );
  }
}
