import 'package:flutter/material.dart';

import 'screens/configuracoes.dart';
import 'screens/historico.dart';
import 'screens/pedidos.dart';
import 'screens/pedido.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: _widgetOptions.elementAt(_selectedIndex),
        child: IndexedStack(
          index: _selectedIndex,
          children: <Widget>[
            Pedidos(),
            Pedido(),
            Historico(),
            Configuracoes(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Pedidos',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart_outlined),
            label: 'Pedido',
            backgroundColor: Colors.blueAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Histórico',
            backgroundColor: Colors.lightBlue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
            backgroundColor: Colors.indigo,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlueAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
