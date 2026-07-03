void main() {
  final productsQuantity = 6;

  double total = calculateDeliveryPrice(productsQuantity);

  print("Valor total: R\$ ${total.toStringAsFixed(2)}");
}

double calculateDeliveryPrice(int productsQuantity) {
  final initialPrice = 5.0;
  final pricePerProduct = 2.0;

  double total = initialPrice + (productsQuantity * pricePerProduct);

  return total;
}
