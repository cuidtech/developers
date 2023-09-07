import 'package:app/exchange_rate/model/exchange_rate.dart';
import 'package:flutter/material.dart';

class ExchangeRateTile extends StatelessWidget {
  final ExchangeRate rate;

  const ExchangeRateTile({super.key, required this.rate});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(rate.code),
      trailing: SizedBox(
          width: 150,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${rate.lastRate}'),
              rate.lastDelta > 0
                  ? const Icon(
                      Icons.arrow_upward,
                      color: Colors.green,
                    )
                  : rate.lastDelta < 0
                      ? const Icon(
                          Icons.arrow_downward,
                          color: Colors.red,
                        )
                      : const Text('-')
            ],
          )),
    );
  }
}
