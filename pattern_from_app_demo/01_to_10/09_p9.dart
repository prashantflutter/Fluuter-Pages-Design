 //
 // 1 2 3 4 5
 // 2 4 6 8 10
 // 3 6 9 12 15
 // 4 8 12 16 20
 // 5 10 15 20 25

 import 'dart:io';

void main(){

  print("Enter Any Number");

  int num = int.parse(stdin.readLineSync().toString());
  int k=1;

  for(int i=1;i<=num;i++){
    for(int j=1;j<=num;j++){
      stdout.write(" ${i * j} ");
    }
    print("");
  }

 }