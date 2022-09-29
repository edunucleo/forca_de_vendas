import 'package:flutter/material.dart';

class Pedidos extends StatelessWidget {
  const Pedidos({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pedidos'),

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.list),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.grid_on),
          ),
        ],
      ),

    );
  }
}