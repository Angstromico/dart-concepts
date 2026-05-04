void main() {
  final donald = Duck();
  donald.fly();
}

abstract class Animal {
  
}

class Mammal extends Animal {
  
}

mixin CanFly on Animal {
  void fly() => print("I can fly!");
}

class Bird extends Animal with CanFly {
  
}

mixin CanSwim on Animal {
  void swim() => print("I can swim!");
}

class Fish extends Animal with CanSwim {
  
}

mixin CanWalk on Animal {
  void walk() => print("I can walk!");
}

class Dog extends Mammal with CanWalk {
  
}

class Duck extends Bird with CanSwim, CanWalk, CanFly {
  
}

class FlyingFish extends Fish with CanFly {
  
}

