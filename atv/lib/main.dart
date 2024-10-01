import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorQuantidade = TextEditingController();
  final TextEditingController _controladorValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cadastrando produto'),
        ),
        body: Column(
          children: <Widget>[
            TextField(controller: _controladorNome),
            TextField(controller: _controladorQuantidade),
            TextField(controller: _controladorValor),
            TextButton(
              child: Text('Cadastrar'),
              onPressed: () {
    final String nome = _controladorNome.text;
    final int quantidade = _controladorQuantidade.text as int;
    final double valor = _controladorValor.text as double;

    final Produto produtoNovo = Produto(nome, quantidade, valor);
    print(produtoNovo);
  },
    )
          ]
),
    ),
  );
}
}

class Produto {
  final String nome;
  final int quantidade;
  final double valor;

  Produto(
    this.nome,
    this.quantidade,
    this.valor,
  );

  @override
  String toString() {
    return 'Produto{nome: $nome, quantidade: $quantidade, valor: $valor}';
  }  
}
