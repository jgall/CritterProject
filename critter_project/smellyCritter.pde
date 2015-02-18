class SmellyCritter extends Critter {

  //should be run every day
  void passDay() {
    eat();
    dance();
    snooze();
  }

  void eat() {
    //40% chance to eat
    if (random(0, 10)<4) {
      if (health<100) {
        health +=6;
      }
    } else {
      health -=6;
    }
    checkHealth();
  }

  void dance() {
    if (this.age > 15) {
      health++;
    }
    checkHealth();
  }

  void snooze() {
    //80% chance to sleep
    if (random(0, 10)<8) {
      health+=2;
    } else {
      health-=1;
    }
    checkHealth();
  }
}

