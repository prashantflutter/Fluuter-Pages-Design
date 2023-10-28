
  // 0 1 0 1 0
  // 0 0 0 0 0
  // 0 1 0 1 0
  // 0 0 0 0 0
  // 0 1 0 1 0

  import 'dart:io';
  void main(){

    print('Enter any Number');
    int num = int.parse(stdin.readLineSync().toString());
    for(int i=1;i<=num;i++){
      for(int j=1;j<=num;j++){
        if(i%2 != 0){
          stdout.write("${(i+j)%2} ");
        }else{
          stdout.write('0 ');
        }
      }
     print("");
    }
  }
