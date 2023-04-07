const exchangeRate = r'''
query exchangeRate($code:String!, $historyLength: Float) {
  exchangeRate(code: $code, historyLength: $historyLength) {
    code,
    description,
    rates
  }
}
''';
