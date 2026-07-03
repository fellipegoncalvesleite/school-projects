void main() {
  final car = Car(brand: 'Toyota', model: 'Corolla', currentSpeed: 0);

  print('Velocidade inicial: ${car.currentSpeed} Km/h');
  print('Acelerar em 50 Km/h: ${car.accelerate(50)}');
  print('Velocidade atual: ${car.currentSpeed} Km/h');
  print('Desacelerar em 20 Km/h: ${car.decelerate(20)}');
  print('Velocidade atual: ${car.currentSpeed} Km/h');
  print('Tentar desacelerar em 100 Km/h: ${car.decelerate(100)}');
  print('Velocidade final: ${car.currentSpeed} Km/h');
}

class Car {
  String brand;
  String model;
  double currentSpeed;

  Car({required this.brand, required this.model, required this.currentSpeed});

  bool accelerate(double speed) {
    if (speed < 0) return false;

    this.currentSpeed += speed;

    return true;
  }

  bool decelerate(double speed) {
    if (speed < 0) return false;

    if (speed > this.currentSpeed) return false;

    currentSpeed -= speed;

    return true;
  }
}
