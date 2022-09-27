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
  //carregar a lista do banco com a pesquisa efetuada pelo usuario. mostrar apenas produtos em destaque

  List<Produto> produtos = ListaProdutos.carregaProdutos();
  bool isSearching = false;
  int valor = 0;

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
          IconButton(
              onPressed: () {
                debugPrint(valor.toString());
              },
              icon: iconeNotificado(Icons.shopping_basket, valor)),
        ],
      ),
      body: ListView.builder(
        itemCount: produtos.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              //AO CLICAR MANDAR PRODUTO PARA A CESTA COM QUANTIDADE
              // produtos[index];

              setState(() {
                valor++;
              });
            },
            child: Column(
              children: [
                itemPedido(index, produtos),
              ],
            ),
          );
        },
      ),
    );
  }
}
