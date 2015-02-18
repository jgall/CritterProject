class AwkwardCritter extends Critter{
  
  //constructor
  AwkwardCritter(){
    this.age = 0;
    this.luck = int(random(0,10));
    this.health = 100;
  }
  
  //should be run every day
  void passDay() {
    eat();
    snooze();
    yodel();
    meditate();
    this.age++;
  }
  
  void yodel(){
    if(health > 80 && luck > 7){
      health+=3;
    } else if(health > 80){
      health+=2;
    }
  }
  
  void meditate(){
    //50% chance to meditate
    if(random(0,2)>1){
      health +=2;
    } else {
      health -=7;
    }
  }
  
  void eat() {
    //85% chance to eat
    if (random(0, 10)<8.5) {
      if (health<100) {
        health +=2;
      }
    } else {
      health -=20;
    }
    checkHealth();
  }

  void snooze() {
    //50% chance to sleep
    if (random(0, 10)<5) {
      health+=9;
    } else {
      health-=2;
    }
    checkHealth();
  }
  
}
