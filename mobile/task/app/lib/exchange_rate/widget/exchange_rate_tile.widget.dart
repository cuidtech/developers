import 'package:app/exchange_rate/exchange_rate_detail.page.dart';
import 'package:app/exchange_rate/model/exchange_rate.dart';
import 'package:flutter/material.dart';

class ExchangeRateTile extends StatelessWidget {
  final ExchangeRate rate;

  const ExchangeRateTile({super.key, required this.rate});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ExchangeRateDetailPage(rate: rate)));
      },
      child: ListTile(
        title: Text(rate.code),
        trailing: SizedBox(
            width: 160,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text('${rate.lastRate}')),
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
      ),
    );
  }
}
