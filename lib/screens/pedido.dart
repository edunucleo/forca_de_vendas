import 'package:flutter/material.dart';
import 'package:forca_de_vendas/models/listaprodutos.dart';
import 'package:forca_de_vendas/models/produto.dart';

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
          autofocus: true,
          style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              icon: Icon(Icons.search,color: Colors.white),
              hintText: 'Buscar Item',
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
        ],
      ),
      body: Center(
        child:ListView(
          children: <Widget> [
            produto_list_layout(),
            produto_list_layout(),
            produto_list_layout(),
            produto_list_layout(),
            produto_list_layout(),
            produto_list_layout(),
            produto_list_layout(),
            produto_list_layout(),
            produto_list_layout(),

          ],

        ),
      ),
    );
  }
}

class produto_list_layout extends StatelessWidget {

  const produto_list_layout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network('https://media-exp1.licdn.com/dms/image/C4D03AQHSKexgrFF--Q/profile-displayphoto-shrink_100_100/0/1516956407194?e=1668643200&v=beta&t=S7fI8bSsbkamuxytC-pICWKqFtJwHULDwUmKvSiYZn0'),
      title: Text('teste'),
      subtitle: Text('teste sub'),
    );
  }
}
