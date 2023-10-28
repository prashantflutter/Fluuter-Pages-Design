
 // A B C D E
 // F G H I J
 // K L M N O
 // P Q R S T
 // U V W X Y

 import 'dart:io';

void main(){

  print("Enter any Number");
  int num = int.parse(stdin.readLineSync().toString());
  var k=1;
  for(int i=1;i<=num;i++){
    // k = String.fromCharCode(65);
    for(int j=1;j<=num;j++){
      stdout.write(" ${String.fromCharCode(64+k)} ");
      k++;
    }
    print("");
  }

  print("=================================\n======================================");


  int k1=65;
  for(int i=1;i<=num;i++){
    for(int j=1;j<=num;j++){
      stdout.write(' ${String.fromCharCode(k1)} ');
      k1++;
    }
    print('');
  }

}