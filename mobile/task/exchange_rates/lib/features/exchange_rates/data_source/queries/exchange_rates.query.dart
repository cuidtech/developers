const exchangeRates = r'''
query exchangeRates($historyLength: Float) {
  exchangeRates(historyLength: $historyLength) {
    code
    rates
  }
}
''';
