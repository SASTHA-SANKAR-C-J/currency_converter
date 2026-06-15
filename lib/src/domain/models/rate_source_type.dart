enum RateSourceType {
  frankfurter,
  exchangeRateApi,
}

extension RateSourceTypeExtension on RateSourceType {
  String get displayName {
    switch (this) {
      case RateSourceType.frankfurter:
        return 'Frankfurter API';
      case RateSourceType.exchangeRateApi:
        return 'ExchangeRate API';
    }
  }
}
