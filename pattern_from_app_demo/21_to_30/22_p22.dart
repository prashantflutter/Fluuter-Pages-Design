

  // 0 0 0 0
  // 1 1 1 1
  // 0 0 0 0
  // 1 1 1 1

  import 'dart:io';

void main(){

  print("Enter any Number");

  int num = int.parse(stdin.readLineSync().toString());
  for(int i=0;i<num;i++){
    for(int j=1;j<=num;j++){
      stdout.write("${i%2} ");
    }
    print("");
  }
  print("**********************\n********************************");

  for(int i=1;i<=num;i++){
    for(int j=1;j<=num;j++){
      if(i%2 == 0){
        stdout.write("1 ");
      }else{
        stdout.write("0 ");
      }
    }
    print("");
  }

  }