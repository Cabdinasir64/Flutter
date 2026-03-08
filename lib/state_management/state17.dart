class OrderSummaryProvider17 {
  final String customerName;
  final double subTotal;

  OrderSummaryProvider17({required this.customerName, required this.subTotal});

  double get tax => subTotal * 0.05; 
  double get shipping => subTotal > 0 ? 15.0 : 0.0;
  double get grandTotal => subTotal + tax + shipping;
}
