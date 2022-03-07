void main(List<String> arguments) {
  int idade = 23;
  String nome = "Bruno";
  bool maiorDeIdade = (idade >= 18);

  if (maiorDeIdade) {
    print("Você tem mais de 18! $nome");
  } else {
    print("Você é um guri!");
  }

  List<String> listaNomes = [];
  listaNomes.add("Bruno");
  listaNomes.add("Lucas");

  listaNomes.forEach((element) {
    print(element);
  });

  List<dynamic> eu = ["Bruno", 23, 1.85, 150];

  print(eu);
  print(nome);
  print(listaNomes);

  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print('$i é par!');
    }
  }

  int random = 20;

  while (random >= 0) {
    print('faltam : ${random--}');
  }
}
