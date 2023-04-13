import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../settings/settings_view.dart';
import 'sample_item.dart';
import 'sample_item_details_view.dart';

/// Displays a list of SampleItems.
class SampleItemListView extends StatelessWidget {
  const SampleItemListView({
    super.key,
    this.items = const [SampleItem(1), SampleItem(2), SampleItem(3)],
  });

  static const routeName = '/';

  final List<SampleItem> items;

  @override
  Widget build(BuildContext context) {
    String ratesQuery = '''
query rates(\$length: Float) {
  exchangeRates(historyLength: \$length) {
description
rates
code
  }
}''';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Items'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to the settings page. If the user leaves and returns
              // to the app after it has been killed while running in the
              // background, the navigation stack is restored.
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          ),
        ],
      ),

      // To work with lists that may contain a large number of items, it’s best
      // to use the ListView.builder constructor.
      //
      // In contrast to the default ListView constructor, which requires
      // building all Widgets up front, the ListView.builder constructor lazily
      // builds Widgets as they’re scrolled into view.
      body: Query(
          options: QueryOptions(
            document: gql(ratesQuery),
            variables: const {
              'length': 2,
            },
            pollInterval: const Duration(seconds: 5),
          ),
          builder: (result, {fetchMore, refetch}) {
            if (result.hasException) {
              return Text(result.exception.toString());
            }

            if (result.isLoading) {
              return const Text('Loading');
            }

            List? rates = result.data?['exchangeRates'];

            if (rates == null) {
              return const Text('No rates');
            }
            return ListView.builder(
                itemCount: rates.length,
                itemBuilder: (context, index) {
                  final currency = rates[index];

                  double lastPrice = ((currency['rates'] as List).last);
                  bool priceUp = (currency['rates'] as List).last >
                      (currency['rates'] as List).first;

                  IconData icon =
                      priceUp ? Icons.arrow_upward : Icons.arrow_downward;
                  Color iconColor = priceUp ? Colors.green : Colors.red;
                  return InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SampleItemDetailsView(currency: currency))),
                    child: Card(
                      child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${currency['code']}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(lastPrice.toStringAsFixed(2)),
                                Icon(
                                  icon,
                                  color: iconColor,
                                  size: 40,
                                )
                              ],
                            ),
                          ),
                          subtitle: Text(
                            ' ${currency['description']}',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )),
                    ),
                  );
                });
          }),
    );
  }
}
