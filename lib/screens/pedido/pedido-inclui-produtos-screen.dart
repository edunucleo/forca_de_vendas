import 'package:flutter/material.dart';

import 'package:forca_de_vendas/models/listaprodutos.dart';
import 'package:forca_de_vendas/models/pedido.dart';
import 'package:forca_de_vendas/models/produto.dart';
import 'package:forca_de_vendas/screens/produto-screen.dart';
import 'package:forca_de_vendas/widgets/icone_notificado.dart';
import 'package:forca_de_vendas/widgets/item_pedido_lista.dart';

class PedidoIncluiProdutosScreen extends StatefulWidget {
  @override
  _PedidoIncluiProdutosScreenState createState() => _PedidoIncluiProdutosScreenState();
}

class _PedidoIncluiProdutosScreenState extends State<PedidoIncluiProdutosScreen> {
  //carregar a lista do banco com a pesquisa efetuada pelo usuario. mostrar apenas produtos em destaque
  //Pedido pedido = Pedido(1, 1, '1', itens=Null, endereco);
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
              //AO CLICAR MANDAR ABRIR A DESCRIÇÃO DO PRODUTO E ADICIONAR QUANTIDADE
              // produtos[index];
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProdutoScreen(produtos[index])));
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