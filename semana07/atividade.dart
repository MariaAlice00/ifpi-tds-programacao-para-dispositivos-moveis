class Veiculo {
  double velocidade;
  String cor;
  double peso;

  Veiculo(this.velocidade, this.cor, this.peso);
}

class Carro extends Veiculo {
  Carro(double velocidade, String cor, double peso): super(velocidade, cor, peso);
}

class Aviao extends Veiculo {
  int numHelices;

  Aviao(double velocidade, String cor, double peso, this.numHelices): super(velocidade, cor, peso);
}

void main() {
  Carro carro1 = Carro(80, 'vermelho', 500);
  Aviao aviao1 = Aviao(500, 'branco', 1500, 6);

  print('Carro');
  print(carro1.velocidade);
  print(carro1.cor);
  print(carro1.peso);

  print('\nAvião');
  print(aviao1.velocidade);
  print(aviao1.cor);
  print(aviao1.peso);
  print(aviao1.numHelices);
}