// abstrict Critter class
abstract class Critter {
  int health, age, luck;
  boolean isAlive;

  abstract void passDay();

  void setAge(int age) {
    this.age = age;
  }
  int getAge() {
    return age;
  }
  void setHealth(int health) {
    this.health = health;
  }
  int getHealth() {
    return health;
  }
  void setLuck(int luck) {
    this.luck = luck;
  }  
  int getLuck() {
    return luck;
  }
  String toString() {
    if (isAlive) {
      return "Age: " + this.age + ", Luck: " + this.luck + ", Health: " + this.health;
    } else {
      return "I am DEAD!";
    }
  }
  void checkHealth() {
    if (health > 100) health = 100;
    if (health <= 0) isAlive = false;
  }
  //finish this
  boolean calculateChances(int pct) {
    int temp = luck*10;
    pct = (pct+temp)/2;
    if (random(0, 100)<pct) return true;
    return false;
  }
}

