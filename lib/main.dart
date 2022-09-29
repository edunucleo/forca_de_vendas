import 'package:flutter/material.dart';

import 'screens/configuracoes-screen.dart';
import 'screens/historico-screen.dart';
import 'screens/pedidos-screen.dart';
import 'screens/pedido-screen.dart';
import 'screens/menu-screen.dart';

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
            PedidoScreen(),
            Historico(),
            Configuracoes(),
            Menu(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: iconeNotificado(Icons.shopping_cart, 0),
            label: 'Pedidos',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: iconeNotificado(Icons.add_shopping_cart_outlined, 1),
            label: 'Pedido',
            backgroundColor: Colors.blueAccent,
          ),
          BottomNavigationBarItem(
            icon: iconeNotificado(Icons.history, 0),
            label: 'Histórico',
            backgroundColor: Colors.lightBlue,
          ),
          BottomNavigationBarItem(
            icon: iconeNotificado(Icons.settings, 0),
            label: 'Configurações',
            backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
            icon: iconeNotificado(Icons.menu, 0),
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
