

  // A A A A A
  // B B B B B
  // C C C C C
  // D D D D D
  // E E E E E




  import 'dart:io';

void main(){

  // A to z == 65 to 90
  // In this code:
  //
  // We have a nested loop where the outer loop iterates from 0 to 3 (representing rows A, B, C, and D),
  // and the inner loop iterates from 0 to 3 as well (representing the repetition of each letter).
  //
  // We use the String.fromCharCode method to convert the ASCII code for the
  // letters 'A' (65), 'B' (66), 'C' (67), and 'D' (68) to their corresponding characters.
  //
  // We print each character in the inner loop, and if we are not in the last iteration of the
  // outer loop (i < 3), we print a space to separate the groups of letters.
  //
  // When you run this Dart program, it will output the desired pattern "AAAA BBBB CCCC DDDD."

  print('Enter any Number');

  int num = int.parse(stdin.readLineSync().toString());

  for(int i=1;i<=num;i++){
    for(int j=1;j<=num;j++){
      stdout.write(' ${String.fromCharCode(64+i)} ');
    }

    print("");
   }
  }