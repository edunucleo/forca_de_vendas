import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:forca_de_vendas/models/pedido.dart';
import 'package:forca_de_vendas/models/produto.dart';
import 'package:intl/intl.dart';

class ProdutoScreen extends StatefulWidget {
  Produto produto;
  //Pedido pedido;

  ProdutoScreen(this.produto);

  @override
  _ProdutoScreenState createState() => _ProdutoScreenState();
}

class _ProdutoScreenState extends State<ProdutoScreen> {
  var qtde = 1;


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
                  child: Center(
                    child: Text.rich(
                      style: TextStyle(color: Colors.white),
                      TextSpan(
                        style: TextStyle(fontSize: 25),
                        text: 'R\$', // default text style
                        children: <TextSpan>[
                          TextSpan(
                            text: f.format(widget.produto.preco * qtde),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 35),
                          ),
                        ],
                      ),
                    ),
                  )),
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
                          setState(() {
                            this.qtde>1? this.qtde--:this.qtde;
                            print(this.qtde.toString());
                          });
                        },
                      )),
                  Container(
                    width: 50,
                    margin: const EdgeInsets.all(15),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: TextEditingController(
                        text: qtde.toString(),
                      ),
                      style: TextStyle(color: Colors.white, fontSize: 35),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Ink(
                      decoration: ShapeDecoration(
                        color: Colors.blueAccent,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            this.qtde++;
                            print(this.qtde.toString());
                          });
                        },
                      )),
                ],
              ),
            ),
            TextButton(

                onPressed: (){
                  //verificar se tem um pedido, caso não tenha criar um pedido em branco e adicionar o produto e a qtde no pedido
                  List<Produto> itensP;
               // widget.pedido =  new Pedido(1, 2, 'João', itensP.add(widget.produto), endereco);
                },

                child:Card(
                    color: Colors.lightBlueAccent,
                    child: Text('Adicionar ao Pedido')
                )

            )

          ],
        ));
  }
}
