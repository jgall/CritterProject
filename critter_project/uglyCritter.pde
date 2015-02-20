class UglyCritter extends Critter {

  //constructor
  UglyCritter() {
    isAlive = true;
    this.age = 0;
    this.luck = int(random(0, 10));
    this.health = 100;
  }
  //should be run every day
  void passDay() {
    if (isAlive) {
      eat();
      snooze();
      this.age++;
    }
  }

  void eat() {
    //70% chance to eat
    if (calculateChances(70)) {
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
    if (calculateChances(50)) {
      health+=9;
    } else {
      health-=2;
    }
    checkHealth();
  }

  String toString() {
    if (isAlive) {
      return "UglyCritter-- Age: " + this.age + ", Luck: " + this.luck + ", Health: " + this.health;
    } else {
      return "UglyCritter-- Age: " +this.age + ", Luck: " + this.luck + ", Health: " + this.health + " I am DEAD!";
    }
  }
}

