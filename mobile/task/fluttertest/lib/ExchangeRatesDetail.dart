import 'package:flutter/material.dart';
import 'package:fluttertest/ExchangeRate.dart';

import 'ExchangeRateDetailSuccessBody.dart';
import 'NetworkService.dart';

class ExchangeRateDetail extends StatelessWidget {
  final String currencyCode;
  final NetworkService networkService;

  const ExchangeRateDetail(this.currencyCode, this.networkService);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ExchangeRate>(
      future: networkService.getExchangeRate(currencyCode, historyLength: 30),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Exchange Rate Detail'),
            ),
            body: Center(child: CircularProgressIndicator()),
          );
        } else if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Exchange Rate Detail'),
            ),
            body: Center(child: Text('Error: ${snapshot.error}')),
          );
        } else {
          final ExchangeRate fetchedData = snapshot.data!;

          return Scaffold(
            appBar: AppBar(
              title: Text('Exchange Rate Detail'),
            ),
            body: ExchangeRateDetailSuccessBody(fetchedData),
          );
        }
      },
    );
  }
}
