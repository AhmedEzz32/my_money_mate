class AllExpensesItemModel{
  final String image;
  final String Function() title, date, price;

  AllExpensesItemModel({
    required this.image,
    required this.title,
    required this.date,
    required this.price,
  });
}
