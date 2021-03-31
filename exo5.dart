import 'dart:io';

void main() {
  //EXERCICE 5
  bool payeImpot;
  print(
      "chers habitant(e) entrer votre sexe(M pour maxulin et F pour feminin) :");
  var sexe = stdin.readLineSync();
  print("chers habitant(e) entrer votre age : ");
  var age = int.parse(stdin.readLineSync()!);

  if (sexe == "M") {
    if (age > 20) {
      payeImpot = true;
    } else {
      payeImpot = false;
    }
    print(payeImpot
        ? "vous etes imposable monsieur"
        : "vous n'etes pas imposable");
  } else if (sexe == "F") {
    if (age > 18 && age < 35) {
      payeImpot = true;
    } else {
      payeImpot = false;
    }
    print(
        payeImpot ? "vous etes imposable madame" : "vous n'etes pas imposable");
  } else {
    print("sexe erroné");
  }
}
