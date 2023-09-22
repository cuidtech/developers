import 'package:app/domain/models/exchange_model.dart';
import 'package:app/presentation/providers/models/exchange_rate_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExchangeRateNotifier extends StateNotifier<ExchangeRateState?>{
  ExchangeRateNotifier():super(null);

  void setSelectedRate(ExchangeRate rate) async {
      state = state?.copyWith(
        loading: true
      );
  }

}