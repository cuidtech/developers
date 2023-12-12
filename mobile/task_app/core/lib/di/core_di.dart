import 'package:get_it/get_it.dart';

import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:presentation/presentation.dart';

final getIt = GetIt.instance;

Future<void> configInjector() async {
  await initDataModule();
  await initDomainModule();
  await initPresentationModule();
}