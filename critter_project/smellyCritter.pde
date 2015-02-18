class SmellyCritter extends Critter {

  
  //constructor
  SmellyCritter(){
    this.age = 0;
    this.luck = int(random(0,10));
    this.health = 100;
    
  }
  //should be run every day
  void passDay() {
    eat();
    dance();
    snooze();
    this.age++;
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
  String toString(){
    return "SmellyCritter-- Age: " + this.age + ", Luck: " + this.luck + ", Health: " + this.health;
  }
}

