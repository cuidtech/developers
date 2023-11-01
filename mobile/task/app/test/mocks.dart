import 'package:mocktail/mocktail.dart';

class VoidCallBack {
  void call() {}
}

class MockVoidCallBack extends Mock implements VoidCallBack {}
