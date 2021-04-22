void main(){
  var idade = 18;
  var analfabeto = false;

  if (analfabeto == false){
    if (idade < 16){
      print('Você tem $idade. Você não tem idade para votar!');
    }
    else if (idade >= 18 && idade < 70){
      print('Você tem $idade. Seu voto é obrigatório!');
    }
    else if ((idade > 69) || (idade >= 16 && idade < 18)){
      print('Você tem $idade. Seu voto é facultativo!');
    }
  }
  else{
    print('Você é analfabeto. Seu voto é facultativo!');
  }
}

/*
< 16: não vota
> 18 e < 70: voto obrigatório
> 69: voto facultativo
>= 16 e < 18: voto facultativo
qualquer idade e analfabeto: voto facultativo
 */