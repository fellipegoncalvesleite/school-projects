void main() {
  final notebooksQuantity = 5;
  final notebookPrice = 25.0;

  double total = calculateTotalCost(notebooksQuantity, notebookPrice);

  print("Preço total: R\$ ${total.toStringAsFixed(2)}");
}

double calculateTotalCost(int quantity, double price) {
  final discount = 0.1;
  final minQuantityToDiscount = 3;

  double total = quantity * price;

  if (quantity >= minQuantityToDiscount) {
    double totalWithDiscount = total - (total * discount);

    return totalWithDiscount;
  }

  return total;
}
