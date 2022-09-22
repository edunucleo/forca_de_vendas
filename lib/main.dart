import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'screens/configuracoes.dart';
import 'screens/historico.dart';
import 'screens/pedidos.dart';
import 'screens/pedido.dart';
import 'screens/menu.dart';

import 'widgets/icone_notificado.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Força de Vendas';

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
            Menu(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: iconeNotificado(Icons.shopping_cart, false, 1),
            label: 'Pedidos',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: iconeNotificado(Icons.add_shopping_cart_outlined, true, 1),
            label: 'Pedido',
            backgroundColor: Colors.blueAccent,
          ),
          BottomNavigationBarItem(
            icon: iconeNotificado(Icons.history, false, 1),
            label: 'Histórico',
            backgroundColor: Colors.lightBlue,
          ),
          BottomNavigationBarItem(
            icon: iconeNotificado(Icons.settings, false, 1),
            label: 'Configurações',
            backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
            icon: iconeNotificado(Icons.menu, false, 1),
            label: 'Menu',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlueAccent,
        onTap: _onItemTapped,
      ),
    );
  }


}
