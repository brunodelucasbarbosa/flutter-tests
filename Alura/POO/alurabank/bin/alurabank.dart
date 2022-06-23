// ignore_for_file: unnecessary_this

import 'package:alurabank/cliente.dart';
import 'package:alurabank/conta_corrente.dart';

void main() {
  Cliente clienteBruno = Cliente("Bruninho2", "1234", "dev");

  ContaCorrente conta = ContaCorrente(clienteBruno, 1234, 111);
  ContaCorrente conta2 = ContaCorrente(clienteBruno, 1234, 111);

  // print("Titular: ${conta.titular.nome}");
  // print("Agencia: ${conta.agencia}");
  // print("Conta: ${conta.conta}");
  // print("Saldo: ${conta.saldo}");

  // print(conta.saldo);
  // print(conta2.saldo);

  // conta.transferencia(2500, conta2);

  // print(conta.saldo);
  // print(conta2.saldo);

  print(conta2.saldo);
  print(conta2);
}
