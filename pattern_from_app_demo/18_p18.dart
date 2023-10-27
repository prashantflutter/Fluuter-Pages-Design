
  // 0 1 0 1 0
  // 1 0 1 0 1
  // 0 1 0 1 0
  // 1 0 1 0 1
  // 0 1 0 1 0

  import 'dart:io';

void main(){

  print("Enter any Number");
  int num = int.parse(stdin.readLineSync().toString());

  for(int i=1;i<=num;i++){
      for(int j=1;j<=num;j++){
         stdout.write("${(i+j)%2} ");
       }
    print("");
    }

  }