import 'package:flutter/material.dart';

class DepartmentScreen extends StatelessWidget {
  final String department;

  DepartmentScreen({required this.department});

  final products = {
    'Bakery': ['Bread', 'Cake', 'Cookies'],
    'Fruits & Vegetables': ['Apple', 'Banana', 'Carrot'],
    'Dairy': ['Milk', 'Cheese', 'Yogurt'],
    'Snacks': ['Chips', 'Chocolate', 'Popcorn'],
  };

  @override
  Widget build(BuildContext context) {
    final items = products[department] ?? [];

    return Scaffold(
      appBar: AppBar(title: Text('$department Department'), backgroundColor: Colors.purple),
      backgroundColor: Colors.pink[50],
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(items[index]),
              subtitle: Text("Price: \$${(index + 1) * 5}"),
              trailing: ElevatedButton(
                onPressed: () {},
                child: Text("Add to Cart"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              ),
            ),
          );
        },
      ),
    );
  }
}