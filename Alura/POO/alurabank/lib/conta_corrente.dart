import 'package:alurabank/cliente.dart';

class ContaCorrente {
  Cliente titular;
  int agencia;
  int conta;
  double _saldo = 0;

  get saldo {
    return this._saldo;
  }

  ContaCorrente(this.titular, this.agencia, this.conta);

  bool transferencia(double valorTransferencia, ContaCorrente contaDestino) {
    if (this._saldo >= valorTransferencia) {
      this._saldo -= valorTransferencia;
      contaDestino.deposito(valorTransferencia);
      return true;
    }

    return false;
  }

  bool saque(double valorSaque) {
    if (this._saldo >= valorSaque) {
      this._saldo -= valorSaque;
      return true;
    }
    return false;
  }

  void deposito(double valorDeposito) {
    this._saldo += valorDeposito;
  }
}
