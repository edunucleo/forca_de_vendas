import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:forca_de_vendas/models/produto.dart';
import 'package:intl/intl.dart';

class ProdutoScreen extends StatefulWidget {
  Produto produto;

  ProdutoScreen(this.produto);

  @override
  _ProdutoScreenState createState() => _ProdutoScreenState();
}

class _ProdutoScreenState extends State<ProdutoScreen> {
  @override
  Widget build(BuildContext context) {
    var f = NumberFormat("###.0#", "pt_BR");
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.produto.nome),
        ),
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(30),
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Color(0xcc000000),
                      offset: Offset(0, 2),
                      blurRadius: 4,
                    ),
                  ],
                  border: Border.all(
                    color: Colors.black,
                    //width: 10.0,
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/images/${widget.produto.imagem}'),
                    fit: BoxFit.cover,
                  )),
            ),
            Container(
              height: 100,
              child: Card(
                color: Colors.lightBlueAccent,
                margin: const EdgeInsets.fromLTRB(5, 10, 5, 30),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(fontSize: 20),
                    text: 'R\$', // default text style
                    children: <TextSpan>[
                      TextSpan(
                        text: f.format(widget.produto.preco),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.lightBlueAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Ink(
                      decoration: ShapeDecoration(
                        color: Colors.blueAccent,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          print('pressed');
                        },
                      )),
                  Container(
                    width: 50,
                    margin: const EdgeInsets.all(15),
                    child: TextFormField(
                        initialValue: '1', textAlign: TextAlign.center),
                  ),
                  Ink(
                      decoration: ShapeDecoration(
                        color: Colors.blueAccent,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          print('pressed');
                        },
                      )),
                ],
              ),
            ),
          ],
        ));
  }
}
