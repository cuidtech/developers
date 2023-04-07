Flavor currentFlavor = Flavor.development;

enum Flavor {
  development,
  production,
  staging;

  bool get isDevelopment => this == Flavor.development;
  bool get isProduction => this == Flavor.production;
  bool get isStaging => this == Flavor.staging;

  String get baseUrl {
    if (isDevelopment) {
      return 'http://localhost:4000/graphql';
    } else if (isStaging) {
      return 'http://localhost:4000/graphql';
    }
    return 'http://localhost:4000/graphql';
  }
}
