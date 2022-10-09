import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/widgets/appdrawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Mussaib";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days of flutter by $name"),
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
