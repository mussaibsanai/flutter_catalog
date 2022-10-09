import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/pages/widgets/appdrawer.dart';
import 'package:flutter_catalog/pages/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Mussaib";
  final dumyList = List.generate(20, (index) => CatalogModel.items[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog App"),
      ),
      body: ListView.builder(
        itemCount: dumyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: dumyList[index]);
        },
      ),
      drawer: AppDrawer(),
    );
  }
}
