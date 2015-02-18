class Enviroment {
  ArrayList<Critter> array = new ArrayList<Critter>();

  Enviroment() {
    for (int i = 0; i <=5; i++) {
      array.add(new AwkwardCritter());
      array.add(new UglyCritter());
      array.add(new SmellyCritter());
    }
  }
  
  void passDay(){
    for(Critter c : array) {
      c.passDay();
    }
  }
  
  void printStatus(){
    for(Critter c : array){
      println(c);
    }
  }
}

