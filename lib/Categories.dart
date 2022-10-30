import 'package:flutter/material.dart';

void main() {
  runApp(const Categories());
}

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Categories';
    const categories=["Formal","Informal","Tops","Bottoms","Hoodies","Jackets","Accessories","Shoes","Sports-wear","Others"];

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(categories.length, (index) {
            return Container(
                padding: const EdgeInsets.all(12),
                color: Colors.purpleAccent[100],
                child: Center(
                  child: Text(
                    categories[index],
                    style: Theme.of(context).textTheme.headline5,
                  ),
                )
            );
          }),
        ),
      ),
    );
  }
}