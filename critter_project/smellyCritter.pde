class SmellyCritter extends Critter{
  void eat(){
    //40% chance to eat
    if(random(0,10)<4){
      if(health<100){
        health +=6;
      }
    } else {
      health -=6;
    }
    checkHealth();
  }
  
  void dance(){
    if(this.age > 15){
      health++;
    }
    checkHealth();
  }
  
  
}
