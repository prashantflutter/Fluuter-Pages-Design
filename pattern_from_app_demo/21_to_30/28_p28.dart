
  // E E E E E
  // D D D D D
  // C C C C C
  // B B B B B
  // A A A A A

  import 'dart:io';

void main(){

  print('Enter any Number');
  int num  = int.parse(stdin.readLineSync().toString());

  for(int i=1;i<=num;i++){
    for(int j=1;j<=num;j++){
      stdout.write(' ${String.fromCharCode(70-i)} ');
    }
    print("");
  }

  }