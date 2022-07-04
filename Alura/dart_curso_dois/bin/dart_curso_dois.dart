void main(List<String> arguments) {
  Fruta fruta = Fruta("Laranja", 0.50, "laranja", "doce", 10);

  print(fruta.__isMadura);
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.cor, this.peso);
}

class Legumes extends Alimento {
  bool isPrecisaCozinhar;

  Legumes(String nome, String cor, double peso, this.isPrecisaCozinhar)
      : super(nome, cor, peso);
}


class Fruta extends Alimento {
  int diasDesdeColheita;
  bool? __isMadura;

  Fruta(String nome, double peso, String cor, String tipo, this.diasDesdeColheita)
      : super(nome, cor, peso);
}
