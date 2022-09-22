import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'screens/configuracoes.dart';
import 'screens/historico.dart';
import 'screens/pedidos.dart';
import 'screens/pedido.dart';

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
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Stack(children: <Widget>[
          Icon(Icons.shopping_cart),
          Badge(
            child: Card(), //you can replace with your widget
            badgeContent: Text("3"),
            position: BadgePosition.topEnd(),
          ),
        ]),
            label: 'Pedidos',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Stack(children: <Widget>[
              Icon(Icons.add_shopping_cart_outlined),
              Badge(
                child: Card(), //you can replace with your widget
                badgeContent: Text("3"),
                position: BadgePosition.topEnd(),
              ),
            ]),
            label: 'Pedido',
            backgroundColor: Colors.blueAccent,
          ),
          BottomNavigationBarItem(
            icon: Stack(children: <Widget>[
              Icon(Icons.history),
              Badge(
                child: Card(), //you can replace with your widget
                badgeContent: Text("3"),
                position: BadgePosition.topEnd(),
              ),
            ]),
            label: 'Histórico',
            backgroundColor: Colors.lightBlue,
          ),
          BottomNavigationBarItem(
            icon: Stack(children: <Widget>[
              Icon(Icons.settings),
              Badge(
                child: Card(), //you can replace with your widget
                badgeContent: Text("3"),
                position: BadgePosition.topEnd(),
              ),
            ]),

            label: 'Configurações',
            backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
            icon: new Stack(children: <Widget>[
              Icon(Icons.menu),
              Badge(
                child: Card(), //you can replace with your widget
                badgeContent: Text("3"),
                position: BadgePosition.topEnd(),
              ),
            ]),
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
