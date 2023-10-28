

 // A F K P U
 // B G L Q V
 // C H M R W
 // D I N S X
 // E J O T Y

 import 'dart:io';
  void main(){

  print("Enter any Number");
  int num = int.parse(stdin.readLineSync().toString());
  int k;
  for(int i=0;i<num;i++){
    k=i;
    for(int j=1;j<=num;j++){
      k+=num;
      stdout.write(" ${String.fromCharCode((k-num)+65)} ");
    }
    print("");
  }
  }