
// E  J  O  T  Y
// D  I  N  S  X
// C  H  M  R  W
// B  G  L  Q  V
// A  F  K  P  U


import 'dart:io';
void main(){

  print("Enter any Number");
  int num = int.parse(stdin.readLineSync().toString());
  int k;
  for(int i=1;i<=num;i++){
    k=num-i;
    for(int j=1;j<=num;j++){
      stdout.write(" ${String.fromCharCode(k+65)} ");
      k=k+num;
    }
    print("");
  }
}