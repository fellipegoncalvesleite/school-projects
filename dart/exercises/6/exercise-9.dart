void main() {
  var order = Order();

  Product product1 = Product('Notebook', 3500.00);
  Product product2 = Product('Mouse', 85.50);
  Product product3 = Product('Teclado', 250.00);

  order.addProduct(product1);
  order.addProduct(product2);
  order.addProduct(product3);

  print('Produtos no pedido:');
  order.products.forEach(
    (product) =>
        print('  - ${product.name}: R\$ ${product.price.toStringAsFixed(2)}'),
  );

  print(
    'Preço total do pedido: R\$ ${order.calculateTotalPrice().toStringAsFixed(2)}',
  );
}

class Order {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
  }

  double calculateTotalPrice() {
    return products.fold(0.0, (sum, product) => sum + product.price);
  }
}

class Product {
  String name;
  double price;

  Product(this.name, this.price);
}
