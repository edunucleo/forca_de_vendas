import 'package:flutter/material.dart';

class Pedido extends StatefulWidget {
  @override
  _PedidoState createState() => _PedidoState();
}

class _PedidoState extends State<Pedido> {

  bool isSearching = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: !isSearching?
        const Text('Pedido'):
        TextField(
          style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              icon: Icon(Icons.search,color: Colors.white),
              hintText: 'Buscar Itens',
              hintStyle: TextStyle(color:Colors.white),
            ),
        ),
        actions: [
          isSearching?
          IconButton(
            onPressed: () {
              setState(() {
                this.isSearching=!this.isSearching;
              });
            },
            icon: Icon(Icons.cancel),
          )
          :
          IconButton(
            onPressed: () {
              setState(() {
                this.isSearching=!this.isSearching;
              });
            },
            icon: Icon(Icons.search),
          ),
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
      body: Center(
        child: Text('colocar itens para fazer o pedido. vai ser escolhido entre lista e grid'),
      ),
    );
  }
}
