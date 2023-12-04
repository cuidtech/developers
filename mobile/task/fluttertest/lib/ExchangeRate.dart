class ExchangeRate {
  final String code;
  final String description;
  final List<double> rates;

  ExchangeRate({
    required this.code,
    required this.description,
    required this.rates,
  });

  int getRisingFactor() {
    if (rates.length < 2) {
      return 0;
    }
    if (rates.first > rates.last) {
      return 1;
    } else if (rates.first < rates.last) {
      return -1;
    } else {
      return 0;
    }
  }

  factory ExchangeRate.fromJson(Map<String, dynamic> json) {
    return ExchangeRate(
      code: json['code'],
      description: json['description'],
      rates: List<double>.from(json['rates'] ?? []),
    );
  }
}
