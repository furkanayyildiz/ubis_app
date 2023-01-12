import 'package:flutter/material.dart';

//page imports
import '../option_data.dart';
import '../widgets/option_item.dart';
import '../widgets/main_drawer.dart';

class OptionScreen extends StatelessWidget {
  static const routeName = '/option_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UBIS"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: MainDrawer(),
      body: GridView(
        padding: const EdgeInsets.all(15),
        children: OPTIAN_DATA.map((opData) => OptionItem(opData)).toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, //* width
          childAspectRatio: 3 / 2, //* heigt in width e oranı
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
