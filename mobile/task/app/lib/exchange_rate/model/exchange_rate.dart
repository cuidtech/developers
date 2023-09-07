class ExchangeRate {
  final String code;
  final String description;
  final List<double> rates;

  ExchangeRate(
      {required this.code, required this.description, required this.rates});

  factory ExchangeRate.fromJson(Map<String, dynamic> json) {
    final List<double> rates = (json['rates'] as List).map((rate) {
      return rate as double;
    }).toList();
    return ExchangeRate(
        code: json['code'], description: json['description'], rates: rates);
  }
}
