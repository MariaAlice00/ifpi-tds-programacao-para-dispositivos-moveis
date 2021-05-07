void main() {
  pets("cachorro", nome: "totó", raca: "doberman");
}

void pets (String animal, {nome, raca, idade}){
  
  print('Bemvindo ao Petshop!');
  print('Seu bichinho é um:\n$animal');
  print('Seu nome é:');
  print(nome ?? "desconhecido");
  print('A raça do bichinho é:');
  print(raca ?? "desconhecida");
  print('Sua idade:');
  print(idade ?? 0);
}