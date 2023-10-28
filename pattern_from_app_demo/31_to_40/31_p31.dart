

   // A B C D E
   // B C D E F
   // C D E F G
   // D E F G H
   
   import 'dart:io';

void main(){
    
  print("Enter any Number");
  int num = int.parse(stdin.readLineSync().toString());
  int k=65;
  for(int i=0;i<num;i++){
    for(int j=0;j<num;j++){
      stdout.write(' ${String.fromCharCode(k+i+j)} ');
    }
    print('');
  }
  
   }
   