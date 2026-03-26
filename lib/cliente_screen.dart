import 'package:flutter/material.dart';

class ClienteScreen extends StatefulWidget {
  const ClienteScreen({super.key});

  @override
  State<ClienteScreen> createState() => _ClienteScreenState();
}

class _ClienteScreenState extends State<ClienteScreen> {
  TextEditingController txtNome = TextEditingController();
  TextEditingController txtSobrenome = TextEditingController();
  TextEditingController txtIdade = TextEditingController();

  String resultado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Cadastro de clientes")),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
       body: Column(
        children: [
          TextField(
            controller: txtNome,
            decoration: InputDecoration(labelText: "Nome")),
          TextField(
            controller: txtSobrenome,
            decoration: InputDecoration(labelText: "Sobrenome")),
          TextField(
            controller: txtIdade, 
            decoration: InputDecoration(labelText: "Idade")),
          SizedBox(
            width: double.infinity,
            child: FloatingActionButton(
              child: Text("Carregar"),
              onPressed: () {
                String nome = txtNome.text;
                String sobrenome = txtSobrenome.text;
                String idade = txtIdade.text;

                setState(() {
                  resultado = "Nome: $nome Sobrenome: $sobrenome Idade: $idade";
                });
                
              },
            ),
          ),
          Text(resultado),
        ],
      ),
    );
  }
}
