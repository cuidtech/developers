import 'package:exchange_rates/app/app.dart';
import 'package:exchange_rates/bootstrap.dart';
import 'package:exchange_rates/core/flavors.dart';

void main() {
  currentFlavor = Flavor.production;

  bootstrap(() => const App());
}
