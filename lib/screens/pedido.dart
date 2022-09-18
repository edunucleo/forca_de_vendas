import 'package:flutter/material.dart';
import 'package:forca_de_vendas/models/listaprodutos.dart';
import 'package:forca_de_vendas/models/produto.dart';

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
                      isSearching = isSearching;
                    });
                  },
                  icon: const Icon(Icons.search),
                ),
        ],
      ),
      body: ListView.builder(
        itemCount: produtos.length,
        // prototypeItem: ListTile(
        //    title: Text(produtos.toString()),
        //  ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Color(0xcc000000),
                      offset: Offset(0, 2),
                      blurRadius: 4,
                    ),
                  ],
                ),
                height: 80,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          image: DecorationImage(
                            image: AssetImage('assets/images/foto.jpg'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Text(produtos[index].nome),
                    Text(produtos[index].preco.toString())
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
