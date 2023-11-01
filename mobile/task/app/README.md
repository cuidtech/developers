# currency_exchange

A simple, currency exchage app that consumes the API from localhost:4000 GraphQL endpoint.

## Getting Started
1. [Install the most recent version of Flutter](https://docs.flutter.dev/get-started/install), and make sure you also set up `ios` and `android` platforms.
2. Install dependencies and generate the code:
```bash
flutter pub get
```
3. Run code generation.
```bash
dart run build_runner build
```
4. Start your emulator/simulator.
5. Verify if you instalation is correct:
```bash
flutter doctor
```
6. Run the app! 
If you're testing on android simulator, you should change `HOST` environment variable, the default value is `localhost` and works well for iOS simulator.
```bash
flutter run --dart-define HOST=10.0.2.2
```

You can also add this config to your `.vscode/launch.json`:
```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "app (android emulator)",
      "request": "launch",
      "type": "dart",
      "args": [
        "--dart-define",
        "HOST=10.0.2.2"
      ]
    },
  ]
}
```

## Run the tests!
1. To run unit and widget tests:
```bash
flutter test
```
2. To run integration test:
```bash
flutter test integration_test
```
NOTE: you should have a device running.

## App Features
1. Display a list of all available currencies
2. Currency detail