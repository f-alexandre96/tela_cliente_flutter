import 'package:flutter/material.dart';

class ClienteScreen extends StatefulWidget {
  const ClienteScreen({super.key});

  @override
  State<ClienteScreen> createState() => _ClienteScreenState();
}

class _ClienteScreenState extends State<ClienteScreen> {
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
          TextField(decoration: InputDecoration(labelText: "Nome")),
          TextField(decoration: InputDecoration(labelText: "Sobrenome")),
          TextField(decoration: InputDecoration(labelText: "Idade")),
          SizedBox(
            width: double.infinity,
            child: FloatingActionButton(
              child: Text("Carregar"),
              onPressed: () {},
            ),
          ),
          Text("Nome:Fernando, Sobrenome: Silva, Idade 30"),
        ],
      ),
    );
  }
}
