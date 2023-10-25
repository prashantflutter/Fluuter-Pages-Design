

import 'dart:io';

void main(){

  // 1.Square Hollow Pattern

  // * * * * * *
  // *         *
  // *         *
  // *         *
  // *         *
  // * * * * * *

  // for(int i=0;i<6;i++){
  //
  // // *  *  *  *  *  *
  // // +  $  $  $  $  #
  // // +  $  $  $  $  #
  // // +  $  $  $  $  #
  // // +  $  $  $  $  #
  // // +  -  -  -  -  -
  //
  //   for(int j=0;j<6;j++){
  //     if (i == 0 ) {
  //       stdout.write(" * ");
  //     }else
  //       if(j == 0){
  //       stdout.write(" + ");
  //     }else if( i == 6 - 1 ){
  //       stdout.write(" - ");
  //     }else if( j == 6 - 1){
  //       stdout.write(" # ");
  //     }
  //     // otherwise print space only.
  //     else {
  //       stdout.write("   ");
  //     }
  //   }
  //   print("");
  // }


  // 2. Number triangle Pattern

  //      1
  //     2 2
  //    3 3 3
  //   4 4 4 4
  //  5 5 5 5 5
  // 6 6 6 6 6 6

  // for(int i=1;i<=6;i++){
  //
  //   for(int k=0;k!=(7-i);k++){
  //     stdout.write(" ");
  //   }
  //   for(int j=1;j<=i;j++){
  //     stdout.write(i);
  //   }
  //
  //   for(int j=2;j<=i;j++){
  //     stdout.write(i);
  //   }
  //
  //   print('');
  // }




       // int num = 16;
       // for(int i=0;i<num;i++){
       //   if(i%2 == 0){
       //     for(int i=0;i<4;i++){
       //       stdout.write("$num ");
       //       num--;
       //     }
       //   }else{
       //       for(int i=4;i>0;i--){
       //         num++;
       //         stdout.write('${num - i} ');
       //         num--;
       //       }
       //       num-=4;
       //   }
       //   print('');
       // }

  for(int i=1;i<=4;i++){

    for(int j=0;j!=(4-i);j++){
      stdout.write("  ");
    }
    for(int k=1;k<=i;k++){
      stdout.write(" $k");
    }
    for(int m=i;m>=1;m--){
      if((m-1) == 0){
        stdout.write('');
      }else{
        stdout.write(' ${m-1}');
      }
    }
    print("");
  }

}




