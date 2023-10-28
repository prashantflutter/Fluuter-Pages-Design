
 // E D C B A
 // E D C B A
 // E D C B A
 // E D C B A
 // E D C B A

 import 'dart:io';

void main(){

  print("Enter any Number");

  int num = int.parse(stdin.readLineSync().toString());

  for(int i=1;i<=num;i++){
    for(int j=1;j<=num;j++){
      stdout.write(" ${String.fromCharCode(70-j)} ");
    }
    print("");
  }



 }