import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

var f = NumberFormat("###.0#", "pt_BR");
Container itemPedido(int index, produtos) {
  return Container(
    margin: const EdgeInsets.all(5),
    decoration: const BoxDecoration(
      color: Colors.white,
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
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              border: Border.all(
                color: Colors.black,
                //width: 10.0,
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/${produtos[index].imagem}'),
                fit: BoxFit.cover,
              )),
        ),
        Text(produtos[index].nome),
        Container(
          margin: const EdgeInsets.all(5),
          child: Text.rich(
            TextSpan(
              text: 'R\$', // default text style
              children: <TextSpan>[
                TextSpan(
                  text: f.format(produtos[index].preco),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
