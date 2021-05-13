class Animal {
  String nome;
  double peso;
  
  Animal(this.nome, this.peso);
}

class Cachorro extends Animal {
  String late;

  Cachorro(String nome, double peso, this.late): super (nome, peso); 
}


class Gato extends Animal {
  String mia;

  Gato(String nome, double peso, this.mia): super(nome, peso);
}

void main(){
  Cachorro cachorro1 = Cachorro('toto', 5, 'au au');
  Gato gato1 = Gato('faísca', 3, 'miau');

  print(cachorro1.nome);
  print(cachorro1.peso);
  print(cachorro1.late);

  print(gato1.nome);
  print(gato1.peso);
  print(gato1.mia);
}