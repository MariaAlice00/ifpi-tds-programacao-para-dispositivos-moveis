void main(){
  List frutas = ['maçã', 'uva', 'laranja'];
  List valor = [1.010, 2.702, 3.001];
  int posicao = 0;

  while (posicao < frutas.length){
    Map caixa = {
      frutas[posicao]: valor[posicao].toStringAsFixed(2)
    };
    print(caixa);
    posicao += 1;
  }
}