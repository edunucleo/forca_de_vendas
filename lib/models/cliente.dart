import 'package:forca_de_vendas/models/endereco.dart';

class Cliente {
  final int cod_cli;
  final String nome;
  final Endereco endereco;
  final DateTime data_cadastro;

  Cliente(
      this.cod_cli,
      this.nome,
      this.endereco,
      this.data_cadastro
      );
}