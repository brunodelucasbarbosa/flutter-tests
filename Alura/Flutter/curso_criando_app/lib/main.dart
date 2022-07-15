import 'package:flutter/material.dart';

// Stateful = Widgets que mudam de conteúdo
// Stateless = Widgets que não mudam

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: ListaTransferencias(),
      ),
    );
  }
}

class ListaTransferencias extends StatefulWidget {
  const ListaTransferencias({Key? key}) : super(key: key);

  static List<Transferencia> lista = [];

  @override
  State<StatefulWidget> createState() {
    return ListaTransferenciaState();
  }
}

class ListaTransferenciaState extends State<ListaTransferencias> {
  @override
  Widget build(BuildContext context) {
    ListaTransferencias.lista.add(Transferencia(1000, 10.0));
    ListaTransferencias.lista.add(Transferencia(1000, 10.0));
    ListaTransferencias.lista.add(Transferencia(1000, 10.0));
    ListaTransferencias.lista.add(Transferencia(1000, 10.0));
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBara'),
      ),
      body: ListView.builder(
        itemCount: ListaTransferencias.lista.length,
        itemBuilder: (cotext, indice) {
          final transferencia = ListaTransferencias.lista[indice];
          return ItemTransferencia(transferencia);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future<dynamic> future = Navigator.push(
              context, MaterialPageRoute(builder: (context) => FormularioTransferencia()));
          future.then((transferencia) {
            debugPrint("teste");
            debugPrint("$transferencia");
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }

}

class ItemTransferencia extends StatelessWidget {
  final Transferencia item;

  const ItemTransferencia(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: const Icon(Icons.ac_unit_outlined),
      title: Text(item.valor.toString()),
      subtitle: Text(item.numeroConta.toString()),
    ));
  }
}

class Editor extends StatelessWidget {
  const Editor(this._controlador, this._rotulo, this._dica, this._icone, {Key? key})
      : super(key: key);

  final TextEditingController _controlador;
  final String _rotulo;
  final String _dica;
  final IconData _icone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: TextField(
        controller: _controlador,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize: 24),
        decoration: InputDecoration(
          icon: Icon(_icone),
          labelText: _rotulo,
          hintText: _dica,
        ),
      ),
    );
  }
}

class FormularioTransferencia extends StatelessWidget {
  const FormularioTransferencia({Key? key}) : super(key: key);

  static TextEditingController _controladorCampoNumeroConta = TextEditingController();
  static TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário de Transferência'),
      ),
      body: Column(
        children: <Widget>[
          Editor(_controladorCampoNumeroConta, "Número da Conta", "1234", Icons.numbers_rounded),
          Editor(_controladorCampoValor, "Valor", "99.99", Icons.monetization_on_sharp),
          ElevatedButton(
            child: const Text("Confirmar"),
            onPressed: () => _criarTransferencia(context),
          ),
        ],
      ),
    );
  }

  void _criarTransferencia(BuildContext context) {
    final int? numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final double? valor = double.tryParse(_controladorCampoValor.text);

    if (numeroConta != null && valor != null) {
      Navigator.pop(context, Transferencia(numeroConta, valor));
    }
  }
}

class Transferencia {
  int? numeroConta;
  double? valor;

  Transferencia(numeroConta, valor);
}
