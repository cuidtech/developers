// ExchangeRatesList Screen
import 'package:flutter/material.dart';

import 'ExchangeRate.dart';
import 'ExchangeRatesListSuccessBody.dart';
import 'NetworkService.dart';

class ExchangeRatesList extends StatelessWidget {
  final NetworkService networkService;

  const ExchangeRatesList(this.networkService);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ExchangeRate>>(
      future: networkService.getExchangeRates(historyLength: 30),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Exchange Rates List'),
            ),
            body: Center(child: CircularProgressIndicator()),
          );
        } else if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Exchange Rates List'),
            ),
            body: Center(child: Text('Error: ${snapshot.error}')),
          );
        } else {
          final List<ExchangeRate> fetchedData = snapshot.data!;
          print(fetchedData);

          return Scaffold(
            appBar: AppBar(
              title: Text('Exchange Rate List'),
            ),
            body: ExchangeRatesListSuccessBody(fetchedData, networkService),
          );
        }
      },
    );
  }
}
