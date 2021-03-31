import 'dart:io';

main() {
  print("entrer un nombre svp : ");
  var nbr = int.parse(stdin.readLineSync()!);
  for (var i = 1; i < 11; i++) {
    print("$nbr * $i = ${nbr * i}");
  }
}
