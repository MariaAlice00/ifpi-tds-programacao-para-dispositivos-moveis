void main(){
  var a = false;
  var b = 19;

  if ((a == true) || (b == 18)){
    if ((a == true) && (b == 18)){
      print('Os dois foram validados.');
    }
    else if ((a == true) || (b == 18)){
      print('Um dos dois foi validado.');
    }
  }
  print('Os dois não foram validados.');
}