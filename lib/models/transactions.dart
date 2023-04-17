class Transaction {
  final String id;
  final double amount;
  final String title;
  final String date;

  Transaction(
      {required this.amount,
      required this.date,
      required this.id,
      required this.title});
}
