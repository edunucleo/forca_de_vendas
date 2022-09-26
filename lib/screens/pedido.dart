import 'package:flutter/material.dart';


import 'package:forca_de_vendas/models/listaprodutos.dart';
import 'package:forca_de_vendas/models/produto.dart';
import 'package:forca_de_vendas/widgets/icone_notificado.dart';
import 'package:forca_de_vendas/widgets/item_pedido_lista.dart';

class Pedido extends StatefulWidget {
  @override
  _PedidoState createState() => _PedidoState();
}

class _PedidoState extends State<Pedido> {
  List<Produto> produtos = ListaProdutos.carregaProdutos();
  bool isSearching = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: !isSearching
            ? const Text('Pedido')
            : const TextField(
                autofocus: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  icon: Icon(Icons.search, color: Colors.white),
                  hintText: 'Buscar Item',
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
        actions: [
          isSearching
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isSearching = !isSearching;
                    });
                  },
                  icon: const Icon(Icons.cancel),
                )
              : IconButton(
                  onPressed: () {
                    setState(() {
                      isSearching = !isSearching;
                    });
                  },
                  icon: const Icon(Icons.search),
                ),
          IconButton(onPressed: (){
          },
              icon: iconeNotificado(Icons.shopping_basket, true, 5)),
        ],
      ),
      body: ListView.builder(
        itemCount: produtos.length,
        // prototypeItem: ListTile(
        //    title: Text(produtos.toString()),
        //  ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
             // produtos[index];
              debugPrint('clicou em $index');
            },
            child: Column(
              children: [
                itemPedido(index,produtos),
              ],
            ),
          );

        },
      ),
    );
  }


}
