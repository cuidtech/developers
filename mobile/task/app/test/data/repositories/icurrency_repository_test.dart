import 'package:app/data/service/currencies_service.dart';
import 'package:app/domain/entities/failure.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app/data/repositories/icurrency_repository.dart';
import 'package:mocktail/mocktail.dart';

import '../../domain/entity_factory.dart';
import '../mock_data.dart';
import '../model_factory.dart';

class MockCurrenciesService extends Mock implements CurrenciesService {}

void main() {
  group('ICurrencyRepository', () {
    late CurrenciesService service;
    late ICurrencyRepository repository;

    setUp(() {
      service = MockCurrenciesService();
      repository = ICurrencyRepository(service);
    });

    group('getCurrencies', () {
      test(
        'should return a list of currencies',
        () async {
          when(() => service.getCurrencies()).thenAnswer(
            (_) async => [createCurrencyModel()],
          );
          final result = await repository.getCurrencies();
          expect(result, equals([createCurrency()]));
        },
      );

      test('should throw a failure', () {
        when(() => service.getCurrencies()).thenThrow(Exception());
        expectLater(repository.getCurrencies(), throwsA(isA<Failure>()));
      });
    });

    group('getCurrencyDetail', () {
      test(
        'should return currency details',
        () async {
          when(() => service.getCurrencyDetail(code)).thenAnswer(
            (_) async => createDetailedCurrencyModel(),
          );
          final result = await repository.getCurrencyDetail(code);
          expect(result, equals(createDetailedCurrency()));
        },
      );

      test('should throw a failure', () {
        when(() => service.getCurrencyDetail(code)).thenThrow(Exception());
        expectLater(
          repository.getCurrencyDetail(code),
          throwsA(isA<Failure>()),
        );
      });
    });
  });
}
