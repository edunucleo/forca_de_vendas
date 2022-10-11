import 'package:flutter/material.dart';
import 'package:forca_de_vendas/screens/pedido/pedido-inclui-produtos-screen.dart';

class PedidoScreen extends StatefulWidget {
  @override
  _PedidoScreenState createState() => _PedidoScreenState();
}

class _PedidoScreenState extends State<PedidoScreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.shopping_basket)),
                Tab(icon: Icon(Icons.account_box_sharp)),
                Tab(icon: Icon(Icons.add_card)),
              ],
            ),
            title: const Text('Incluir um Pedido'),
          ),
          body:  TabBarView(
            children: [
               PedidoIncluiProdutosScreen(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// import 'package:forca_de_vendas/models/listaprodutos.dart';
// import 'package:forca_de_vendas/models/pedido.dart';
// import 'package:forca_de_vendas/models/produto.dart';
// import 'package:forca_de_vendas/screens/produto-screen.dart';
// import 'package:forca_de_vendas/widgets/icone_notificado.dart';
// import 'package:forca_de_vendas/widgets/item_pedido_lista.dart';
//
// class PedidoScreen extends StatefulWidget {
//   @override
//   _PedidoScreenState createState() => _PedidoScreenState();
// }
//
// class _PedidoScreenState extends State<PedidoScreen> {
//   int _currentStep = 0;
//   StepperType stepperType = StepperType.vertical;
//
//   //carregar a lista do banco com a pesquisa efetuada pelo usuario. mostrar apenas produtos em destaque
//   //Pedido pedido = Pedido(1, 1, '1', itens=Null, endereco);
//   List<Produto> produtos = ListaProdutos.carregaProdutos();
//   bool isSearching = false;
//   int valor = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: !isSearching
//             ? const Text('Pedido')
//             : const TextField(
//           autofocus: true,
//           style: TextStyle(color: Colors.white),
//           decoration: InputDecoration(
//             icon: Icon(Icons.search, color: Colors.white),
//             hintText: 'Buscar Item',
//             hintStyle: TextStyle(color: Colors.white),
//           ),
//         ),
//         actions: [
//           isSearching
//               ? IconButton(
//             onPressed: () {
//               setState(() {
//                 isSearching = !isSearching;
//               });
//             },
//             icon: const Icon(Icons.cancel),
//           )
//               : IconButton(
//             onPressed: () {
//               setState(() {
//                 isSearching = !isSearching;
//               });
//             },
//             icon: const Icon(Icons.search),
//           ),
//           IconButton(
//               onPressed: () {
//                 debugPrint(valor.toString());
//               },
//               icon: iconeNotificado(Icons.shopping_basket, valor)),
//
//
//         ],
//       ),
//       body: Container(
//         child: Column(
//           children: [
//             Expanded(
//               child: Stepper(
//                 type: stepperType,
//                 physics: ScrollPhysics(),
//                 currentStep: _currentStep,
//                 onStepTapped: (step) => tapped(step),
//                 onStepContinue: continued,
//                 onStepCancel: cancel,
//
//                 steps: <Step>[
//                   Step(
//
//                     title: new Text('Itens'),
//
//                     content: Column(
//
//                       children: <Widget>[
//                         ListView.builder(
//                           shrinkWrap: true,
//                           itemCount:
//                           produtos.length,
//                           itemBuilder: (context, index) {
//                             return GestureDetector(
//                               onTap: () {
//                                 //AO CLICAR MANDAR ABRIR A DESCRIÇÃO DO PRODUTO E ADICIONAR QUANTIDADE
//                                 // produtos[index];
//                                 Navigator.push(context, MaterialPageRoute(builder: (context) => ProdutoScreen(produtos[index])));
//                                 setState(() {
//                                   valor++;
//                                 });
//                               },
//                               child: Column(
//                                 children: [
//                                   itemPedido(index, produtos),
//                                 ],
//                               ),
//                             );
//                           },
//
//                         )
//
//                         ,
//                       ],
//                     ),
//                     isActive: _currentStep >= 0,
//                     state: _currentStep >= 0
//                         ? StepState.complete
//                         : StepState.disabled,
//                   ),
//                   Step(
//                     title: new Text('Cliente'),
//                     content: Column(
//                       children: <Widget>[Text('Endereço do Cliente')],
//                     ),
//                     isActive: _currentStep >= 0,
//                     state: _currentStep >= 1
//                         ? StepState.complete
//                         : StepState.disabled,
//                   ),
//                   Step(
//                     title: new Text('Concluir o Pedido'),
//                     content: Column(
//                       children: <Widget>[
//                         Text('colocar lista de itens e total a ser pago')
//                       ],
//                     ),
//                     isActive: _currentStep >= 0,
//                     state: _currentStep >= 2
//                         ? StepState.complete
//                         : StepState.disabled,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//
//
//     );
//   }
//
//
//
//   switchStepsType() {
//     setState(() =>
//     stepperType == StepperType.vertical
//         ? stepperType = StepperType.horizontal
//         : stepperType = StepperType.vertical);
//   }
//
//   tapped(int step) {
//     setState(() => _currentStep = step);
//   }
//
//   continued() {
//     _currentStep < 2 ? setState(() => _currentStep += 1) : null;
//   }
//
//   cancel() {
//     _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
//   }
// }
