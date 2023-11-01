extension MoneyExtension on double {
  /// Converts a [double] to a [String] with a dollar sign and [fractionDigits] places.
  String toMoneyString([int fractionDigits = 2]) {
    return '\$${toStringAsFixed(fractionDigits)}';
  }
}
