// ignore_for_file: unnecessary_this

void main() {
  ContaCorrente conta = ContaCorrente("Bruninho", 1234, 111, 500);
  //ContaCorrente conta2 = ContaCorrente("Bruninho", 1234, 111, 500);

  print("Titular: ${conta.titular}");
  print("Agencia: ${conta.agencia}");
  print("Conta: ${conta.conta}");
  print("Saldo: ${conta.saldo}");

  conta.deposito(500);

  if (conta.saque(500)) {
    print("Saque efetuado, novo saldo ${conta.saldo}");
  } else {
    print("Num deu");
  }
}

class ContaCorrente {
  String titular;
  int agencia;
  int conta;
  double saldo = 0;

  ContaCorrente(this.titular, this.agencia, this.conta, this.saldo);

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
