import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Contato> contatos = [];

  @override
  void initState() {
    super.initState();

    contatos.add(new Contato(
        nome: "Bruno", telefone: "8170-3123", tipo: ContatoType.FAVORITO));

    contatos.add(new Contato(
        nome: "Lucas", telefone: "8170-3123", tipo: ContatoType.CASA));

    contatos.add(new Contato(
        nome: "Sérgio", telefone: "8170-3123", tipo: ContatoType.TRABALHO));
    contatos.add(new Contato(
        nome: "Sérgio", telefone: "8170-3123", tipo: ContatoType.CELULAR));
    contatos.add(new Contato(
        nome: "Sérgio", telefone: "8170-3123", tipo: ContatoType.FAVORITO));
    contatos.add(new Contato(
        nome: "Sérgio", telefone: "8170-3123", tipo: ContatoType.FAVORITO));
    contatos.add(new Contato(
        nome: "Sérgio", telefone: "8170-3123", tipo: ContatoType.TRABALHO));
    contatos.add(new Contato(
        nome: "Sérgio", telefone: "8170-3123", tipo: ContatoType.CASA));
    contatos.add(new Contato(
        nome: "Sérgio", telefone: "8170-3123", tipo: ContatoType.FAVORITO));
    contatos.add(new Contato(
        nome: "Sérgio", telefone: "8170-3123", tipo: ContatoType.TRABALHO));
    contatos.add(new Contato(
        nome: "Sérgio", telefone: "8170-3123", tipo: ContatoType.FAVORITO));
    contatos.add(new Contato(
        nome: "Sérgio", telefone: "8170-1111", tipo: ContatoType.FAVORITO));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemBuilder: (context, index) {
              var contato = contatos[index];
              return ListTile(
                leading: CircleAvatar(
                  child: ContatoHelper.getIconByContatoType(contato.tipo!),
                  backgroundColor: Colors.blue[200],
                ),
                title: Text(contato.nome!),
                subtitle: Text(contato.telefone!),
                trailing: IconButton(
                  icon: Icon(Icons.call),
                  onPressed: () => {
                    print('oi, você clicou no contato'),
                  },
                ),
              );
            },
            separatorBuilder: (context, index) => Divider(),
            itemCount: contatos.length));
  }
}

class Contato {
  final String? nome;
  final String? telefone;
  final ContatoType? tipo;

  Contato({@required this.nome, @required this.telefone, @required this.tipo});
}

enum ContatoType { CELULAR, TRABALHO, FAVORITO, CASA }

class ContatoHelper {
  static Icon getIconByContatoType(ContatoType tipo) {
    switch (tipo) {
      case ContatoType.CELULAR:
        return Icon(Icons.phone_android, color: Colors.green[700]);
      case ContatoType.TRABALHO:
        return Icon(Icons.work, color: Colors.brown[600]);
      case ContatoType.FAVORITO:
        return Icon(Icons.star, color: Colors.yellow[6]);
      case ContatoType.CASA:
        return Icon(Icons.home, color: Colors.purple[600]);
    }
  }
}