void main() {
  String nome = 'Maria';
  int escolha = 2;

  switch(escolha){
    case 1:
      if (nome == 'Maria') {
        print('$nome é uma mulher.');
      }
      else if (nome == 'Mário') {
        print('$nome é um homem.');
      }
      else {
        print('Não reconhecemos este nome.');
      }
      break;
    
    case 2:
      if (nome == 'Maria') {
        print('$nome é Secretária.');
      }
      else if (nome == 'Mário') {
        print('$nome é Gerente.');
      }
      else {
        print('Esta pessoa não trabalha em nossa empresa.');
      }
      break;

    case 3:
      if (nome == 'Maria') {
        print('$nome mora em Teresina.');
      }
      else if (nome == 'Mário') {
        print('$nome mora em Timon.');
      }
      else {
        print('Não temos esta informação.');
      }
      break;
    
    default:
      print('Escolha inválida.');
  }
}