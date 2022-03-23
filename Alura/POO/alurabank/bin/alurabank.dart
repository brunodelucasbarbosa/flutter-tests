// ignore_for_file: unnecessary_this

void main() {
  ContaCorrente conta = ContaCorrente("Bruninho", 1234, 111, 500);
  ContaCorrente conta2 = ContaCorrente("Bruninho", 1234, 111, 500);

  print("Titular: ${conta.titular}");
  print("Agencia: ${conta.agencia}");
  print("Conta: ${conta.conta}");
  print("Saldo: ${conta.saldo}");

  print(conta.saldo);
  print(conta2.saldo);

  conta.transferencia(2500, conta2);

  print(conta.saldo);
  print(conta2.saldo);
}

class ContaCorrente {
  String titular;
  int agencia;
  int conta;
  double saldo = 0;

  ContaCorrente(this.titular, this.agencia, this.conta, this.saldo);

  bool transferencia(double valorTransferencia, ContaCorrente contaDestino) {
    if (this.saldo >= valorTransferencia) {
      this.saldo -= valorTransferencia;
      contaDestino.deposito(valorTransferencia);
      return true;
    }

    return false;
  }

  bool saque(double valorSaque) {
    if (this.saldo >= valorSaque) {
      this.saldo -= valorSaque;
      return true;
    }
    return false;
  }

  void deposito(double valorDeposito) {
    this.saldo += valorDeposito;
  }
}
