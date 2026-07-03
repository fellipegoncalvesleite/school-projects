void main() {
  Dog dog = new Dog();
  Cat cat = new Cat();

  print("Cachorro emite som:");
  dog.emitSound();

  print("Gato emite som:");
  cat.emitSound();
}

abstract class Animal {
  void emitSound();
}

class Dog extends Animal {
  @override
  void emitSound() {
    print("Au, au!");
  }
}

class Cat extends Animal {
  @override
  void emitSound() {
    print("Miau, miau!");
  }
}
