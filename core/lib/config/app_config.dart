enum Flavor {
  dev,
}

class AppConfig {
  final Flavor flavor;
  final String baseUrl;

  AppConfig({
    required this.flavor,
    required this.baseUrl,
  });

  factory AppConfig.fromFlavor(Flavor flavor) {
    String baseUrl;
    switch (flavor) {
      case Flavor.dev:
        baseUrl = 'http://45.10.110.181:8080/';
        break;
    }

    return AppConfig(
      flavor: flavor,
      baseUrl: baseUrl,
    );
  }
}
