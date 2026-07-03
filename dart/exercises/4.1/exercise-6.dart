void main() {
  final parkingHours = 2;
  final parkingMinutes = 20;

  double parkingPrice = calculateParkingPrice(parkingHours, parkingMinutes);

  print("Preço do estacionamento: R\$ ${parkingPrice.toStringAsFixed(2)}");
}

double calculateParkingPrice(int parkingHours, int parkingMinutes) {
  final parkingHourPrice = 4.0;

  double price = parkingHours * parkingHourPrice;

  if (parkingMinutes > 0) {
    price += parkingHourPrice;
  }

  return price;
}
