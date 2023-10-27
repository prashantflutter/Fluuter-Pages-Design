

 // A B C D E
 // A B C D E
 // A B C D E
 // A B C D E
 // A B C D E

 import 'dart:io';

void main(){

  print("Enter any Number");
  int num = int.parse(stdin.readLineSync().toString());
    for(int i=1;i<=num;i++){
       for(int j=1;j<=num;j++){
          stdout.write(' ${String.fromCharCode(64+j)} ');
        }
       print("");
    }
 }