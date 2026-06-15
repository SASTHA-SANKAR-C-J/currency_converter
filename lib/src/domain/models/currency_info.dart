class CurrencyInfo {
  final String code;
  final String name;

  const CurrencyInfo({required this.code, required this.name});

  static const List<CurrencyInfo> commonCurrencies = [
    CurrencyInfo(code: 'USD', name: 'US Dollar'),
    CurrencyInfo(code: 'EUR', name: 'Euro'),
    CurrencyInfo(code: 'GBP', name: 'British Pound'),
    CurrencyInfo(code: 'JPY', name: 'Japanese Yen'),
    CurrencyInfo(code: 'INR', name: 'Indian Rupee'),
    CurrencyInfo(code: 'AUD', name: 'Australian Dollar'),
    CurrencyInfo(code: 'CAD', name: 'Canadian Dollar'),
    CurrencyInfo(code: 'CHF', name: 'Swiss Franc'),
    CurrencyInfo(code: 'CNY', name: 'Chinese Yuan'),
    CurrencyInfo(code: 'NZD', name: 'New Zealand Dollar'),
    CurrencyInfo(code: 'SEK', name: 'Swedish Krona'),
    CurrencyInfo(code: 'KRW', name: 'South Korean Won'),
    CurrencyInfo(code: 'SGD', name: 'Singapore Dollar'),
    CurrencyInfo(code: 'NOK', name: 'Norwegian Krone'),
    CurrencyInfo(code: 'MXN', name: 'Mexican Peso'),
    CurrencyInfo(code: 'BRL', name: 'Brazilian Real'),
    CurrencyInfo(code: 'TRY', name: 'Turkish Lira'),
    CurrencyInfo(code: 'ZAR', name: 'South African Rand'),
    CurrencyInfo(code: 'HKD', name: 'Hong Kong Dollar'),
    CurrencyInfo(code: 'MYR', name: 'Malaysian Ringgit'),
    CurrencyInfo(code: 'THB', name: 'Thai Baht'),
    CurrencyInfo(code: 'AED', name: 'UAE Dirham'),
    CurrencyInfo(code: 'SAR', name: 'Saudi Riyal'),
    CurrencyInfo(code: 'RUB', name: 'Russian Ruble'),
    CurrencyInfo(code: 'PLN', name: 'Polish Zloty'),
  ];

  static CurrencyInfo? findByCode(String code) {
    try {
      return commonCurrencies.firstWhere((c) => c.code == code);
    } catch (_) {
      return null;
    }
  }
}
