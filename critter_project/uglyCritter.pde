class UglyCritter {
  
  //constructor
  UglyCritter(){
    this.age = 0;
    this.luck = random(0,10);
    this.health = 100;
  }
  //should be run every day
  void passDay() {
    eat();
    snooze();
    this.age++;
  }

  void eat() {
    //70% chance to eat
    if (random(0, 10)<7) {
      if (health<100) {
        health +=4;
      }
    } else {
      health -=15;
    }
    checkHealth();
  }

  void snooze() {
    //50% chance to sleep
    if (random(0, 10)<5) {
      health+=2;
    } else {
      health-=1;
    }
    checkHealth();
  }
}

