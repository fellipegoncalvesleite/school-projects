import 'dart:math';

void main() {
  Rectangle rectangle = Rectangle(width: 5, height: 3);
  Circle circle = Circle(diameter: 10);

  print('Retângulo: ${rectangle.width}x${rectangle.height}');
  print('Área do retângulo: ${rectangle.calculateArea()}');
  print('Círculo: diâmetro de ${circle.diameter}');
  print('Área do círculo: ${circle.calculateArea()}');
}

abstract class Shape {
  double calculateArea();
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle({required this.width, required this.height});

  @override
  double calculateArea() {
    return this.width * this.height;
  }
}

class Circle extends Shape {
  double diameter;

  Circle({required this.diameter});

  @override
  double calculateArea() {
    return pi * pow(diameter / 2, 2);
  }
}
