void main() {
  Product computer = Product("Computador", 5000.0);

  print(
    "Nome: ${computer.name}\nPreço: R\$ ${computer.price.toStringAsFixed(2)}",
  );

  if (computer.applyDiscount(0.15)) {
    print("Desconto de 15% aplicado!");
  } else {
    print("Desconto inválido!");
  }

  print(
    "Nome: ${computer.name}\nPreço: R\$ ${computer.price.toStringAsFixed(2)}",
  );
}

class Product {
  String name;
  double price;

  Product(this.name, this.price);

  bool applyDiscount(double discount) {
    if (discount > 1) return false;

    if (discount < 0) return false;

    this.price *= 1 - discount;

    return true;
  }
}
