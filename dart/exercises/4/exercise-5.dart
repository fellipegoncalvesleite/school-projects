void main() {
  final saleValue = 40000.00;

  print("Valor de venda: R\$ ${saleValue.toStringAsFixed(2)}");

  double commissionValue = calculateCommission(saleValue);

  print("Valor da comissão: R\$ ${commissionValue.toStringAsFixed(2)}");
}

double calculateCommission(double saleValue) {
  final defaultCommissionRate = 0.07;

  // Min sale value: commission rate
  Map<double, double> commissionRates = {50000.00: 0.12, 29999.99: 0.095};

  for (var MapEntry(key: minSaleValue, value: rate)
      in commissionRates.entries) {
    if (saleValue > minSaleValue) {
      double commissionValue = saleValue * rate;

      return commissionValue;
    }
  }

  return saleValue * defaultCommissionRate;
}
