import 'package:app/domain/exchange_repository.dart';
import 'package:app/domain/models/exchange_model.dart';
import 'package:app/presentation/providers/models/exchange_rate_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExchangeRateNotifier extends StateNotifier<ExchangeRateState>{
  
  final ExchangeRepository exchangeRepository;

  ExchangeRateNotifier(this.exchangeRepository):super(ExchangeRateState(loading: false));

  ExchangeRateNotifier.withRate(ExchangeRate rate, this.exchangeRepository):super(ExchangeRateState(loading: false, selectedRate: rate));

  void setSelectedRate(ExchangeRate rate) async {
      state = state.copyWith(
        loading: true
      );

      exchangeRepository.getRateByCode(rate.code).then((value){
        state = state.copyWith(
          loading: false,
          selectedRate: value
        );
      });
  }

}