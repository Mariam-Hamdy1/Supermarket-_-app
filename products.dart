import 'package:flutter/material.dart';
import 'department_screen.dart';

class ProductsScreen extends StatelessWidget {
  final departments = ['Fruits & Vegetables', 'Dairy', 'Bakery', 'Snacks'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(title: Text('Departments'), backgroundColor: Colors.purple),
      body: ListView.builder(
        itemCount: departments.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(departments[index]),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DepartmentScreen(department: departments[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}