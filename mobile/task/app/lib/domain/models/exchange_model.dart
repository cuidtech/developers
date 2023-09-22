import 'package:flutter/foundation.dart';

class ExchangeRate {

  String code;
  String desc;
  List<double> rates;
  ExchangeRate({
    required this.code,
    required this.desc,
    required this.rates,
  });

  ExchangeRate copyWith({
    String? code,
    String? desc,
    List<double>? rates,
  }) {
    return ExchangeRate(
      code: code ?? this.code,
      desc: desc ?? this.desc,
      rates: rates ?? this.rates,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'desc': desc,
      'rates': rates,
    };
  }

  @override
  String toString() => 'ExchangeRate(code: $code, desc: $desc, rates: $rates)';

  @override
  bool operator ==(covariant ExchangeRate other) {
    if (identical(this, other)) return true;
  
    return 
      other.code == code &&
      other.desc == desc &&
      listEquals(other.rates, rates);
  }

  @override
  int get hashCode => code.hashCode ^ desc.hashCode ^ rates.hashCode;
}
