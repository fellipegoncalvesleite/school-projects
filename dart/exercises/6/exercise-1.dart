void main() {
  Person person = new Person("Heitor", 17);

  person.printInfos();
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void printInfos() {
    print("Meu nome é ${this.name} e eu tenho ${this.age} anos!");
  }
}
