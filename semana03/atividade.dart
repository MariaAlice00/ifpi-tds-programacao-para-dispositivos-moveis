void main(){
  List frutas = ['maçã', 'uva', 'laranja', 'melancia'];
  List precos = [2, 5, 3, 10];
  int posicao = 0;

  while (posicao < frutas.length){
    Map caixa = {
      frutas[posicao]: precos[posicao]
    };
    print(caixa);
    posicao += 1;
  }
}