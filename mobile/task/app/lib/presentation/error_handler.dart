import 'package:flutter/material.dart';

class CurrencyExchangeErrorWidget extends StatelessWidget {
  const CurrencyExchangeErrorWidget({
    required this.message,
    required this.onRetry,
    super.key,
  });

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: DefaultTextStyle(
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.red),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message),
              IconButton(
                onPressed: onRetry,
                icon: const Icon(Icons.refresh),
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}

@visibleForTesting
const genericErrorMessage = 'Oops! Something went wrong.';

Widget errorHandler(
  Object error,
  StackTrace? stackTrace, {
  required VoidCallback onRetry,
}) {
  // TODO: enhance error handling
  return CurrencyExchangeErrorWidget(
    message: genericErrorMessage,
    onRetry: onRetry,
  );
}
