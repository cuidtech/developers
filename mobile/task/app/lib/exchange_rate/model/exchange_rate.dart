class ExchangeRate {
  final String code;
  final String description;
  final List<double> rates;

  ExchangeRate(
      {required this.code, required this.description, required this.rates});

  get lastRate => rates.last;

  get lastDelta {
    if (rates.length <= 1) {
      return 0;
    }

    return rates.last - rates.elementAt(rates.length - 2);
  }

  factory ExchangeRate.fromJson(Map<String, dynamic> json) {
    final List<double> rates = (json['rates'] as List).map((rate) {
      return rate as double;
    }).toList();
    return ExchangeRate(
        code: json['code'], description: json['description'], rates: rates);
  }
}
