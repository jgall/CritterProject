class AwkwardCritter extends Critter {

  //constructor
  AwkwardCritter() {
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
      yodel();
      meditate();
      this.age++;
    }
  }

  void yodel() {
    if (health > 80 && luck > 7) {
      health+=3;
    } else if (health > 80) {
      health+=2;
    }
    checkHealth();
  }

  void meditate() {
    //50% chance to meditate
    if (calculateChances(50)) {
      health +=2;
    } else {
      health -=7;
    }
    checkHealth();
  }

  void eat() {
    //85% chance to eat
    if (calculateChances(85)) {
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
    if (calculateChances(50)) {
      health+=9;
    } else {
      health-=2;
    }
    checkHealth();
  }

  String toString() {
    if (isAlive) {
    return "AwkwardCritter-- Age: " + this.age + ", Luck: " + this.luck + ", Health: " + this.health;
    } else {
      return "AwkwardCritter-- Age: " +this.age + ", Luck: " + this.luck + ", Health: " + this.health + " I am DEAD!";
    }
  }
}

