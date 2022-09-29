import 'package:flutter/material.dart';
import 'package:forca_de_vendas/models/produto.dart';
class ProdutoScreen extends StatefulWidget{
  Produto produto;
  ProdutoScreen(this.produto);
  @override
  _ProdutoScreenState createState() => _ProdutoScreenState();
}

class _ProdutoScreenState extends State<ProdutoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.produto.nome),
      ),
    );
  }
}

