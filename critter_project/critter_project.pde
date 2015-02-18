Enviroment test;

void setup(){
  test = new Enviroment();
  test.printStatus();
  for(int i = 0; i < 30; i++){
    test.passDay();
  }
  println("\n");
  test.printStatus();
}

void draw(){

}
