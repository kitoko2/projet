main() {
  /* ____A LIRE_____ 
     pour instancier les robots j'ai utiliser un constructeur qui prend en compte
     (posx,posy,face(0 pour nord,1 pour Est,2 pour sud et 3 pour ouest))
     pour afficher la direction dans laquelle le robot fait face utiliser l'attribut direction
     (il fera ressortir la face en chaine de caractere).
     utiliser la methode instruction("...") pour donner les ordres au robot une fois creer.
  */

  print("--------DEBUT PROGRAMME-----------");
  //Robot(x,y,<la face(0,1,2,3 pour Nord,Est,Sud,Ouest)>)
  Robot robo1 = new Robot(0, 0, 0);
  Robot robo2 = new Robot(0, -1, 0);

  //CHANGEMENT DE LA POSITION VERS LA FACE EST

  robo1.instruction("D");
  robo2.instruction("D");
  // print(robo2.direction) affichera Est

  //CHANGEMENT DE LA POSITION VERS LA FACE OUEST
  robo1.instruction("GG");
  robo2.instruction("GG");
  // tourner 2 fois a gauche permet de changer la face a Nord, puis Ouest(car les 2 robot font face actuellement a l'Est)
  // print(robo2.direction) affichera Ouest;

  //SERIE D'INSTRUCTION
  //1
  print("----------INSTRUCTION 1-------------------");
  Robot r = new Robot(7, 3, 0);
  r.instruction("DAAGAG");
  print("la nouvelle position(x,y) de r est: (${r.x},${r.y})");
  print("sa nouvelle direction est le(l') ${r.direction}");

  //2
  print("\n----------INSTRUCTION 2-------------------");
  Robot r2 = new Robot(2, -7, 3);
  r2.instruction("DDAAAAAGA");
  print("la nouvelle position(x,y) de r2 est: (${r2.x},${r2.y})");
  print("sa nouvelle direction est le(l') ${r2.direction}");

  //3
  print("\n----------INSTRUCTION 3-------------------");
  Robot r3 = new Robot(8, 4, 2);
  r3.instruction("GAAADDDAGGGG");
  print("la nouvelle position(x,y) de r3 est: (${r3.x},${r3.y})");
  print("sa nouvelle direction est le(l') ${r3.direction}");
}

class Robot {
  int x = 0;
  int y = 0;
  int face = 0; //0 pour nord,1 pour ouest 2 pour sud 3 pour Est
  String direction;
  List changeface = ["Nord", "Est", "Sud", "Ouest"];

  Robot(int x, int y, int face) {
    this.x = x;
    this.y = y;
    this.face = face;
    this.direction = changeface[face];
  }
  instruction(String instruction) {
    for (int i = 0; i < instruction.length; i++) {
      if (instruction[i] == "D") {
        face++;
        if (face > 3) {
          face = 0;
        }
        this.direction = changeface[face];
      }
      if (instruction[i] == "G") {
        face--;
        if (face < 0) {
          face = 3;
        }
        this.direction = changeface[face];
      }
      if (instruction[i] == "A" && this.direction == "Nord") {
        this.y = this.y + 1;
      }
      if (instruction[i] == "A" && this.direction == "Sud") {
        this.y = this.y - 1;
      }
      if (instruction[i] == "A" && this.direction == "Ouest") {
        this.x = this.x - 1;
      }
      if (instruction[i] == "A" && this.direction == "Est") {
        this.x = this.x + 1;
      }
    }
  }
}
