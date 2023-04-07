part of '../exchange_list_screen.dart';

class _ExchangeRateCard extends StatelessWidget {
  const _ExchangeRateCard({required this.exchangeRate});

  final ExchangeRate exchangeRate;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.goNamed(
        ExchangeRateDetailsScreen.path,
        extra: exchangeRate.code,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(5),
        ),
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  exchangeRate.code,
                  style: const TextStyle(color: Colors.white),
                ),
                const Spacer(),
                if (exchangeRate.isRising)
                  const Icon(
                    Icons.arrow_upward,
                    color: Colors.green,
                  )
                else
                  const Icon(
                    Icons.arrow_downward,
                    color: Colors.red,
                  )
              ],
            ),
            Text(
              '${AppLocalizations.of(context).latestRate}: ${exchangeRate.rates[0]}',
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
