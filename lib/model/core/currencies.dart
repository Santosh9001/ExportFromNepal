class Currencies {
  String? _baseCurrencyCode;
  String? _baseCurrencySymbol;
  String? _defaultDisplayCurrencyCode;
  String? _defaultDisplayCurrencySymbol;
  List<String>? _availableCurrencyCodes;
  List<Exchange_rates>? _exchangeRates;

  String? get baseCurrencyCode => _baseCurrencyCode;
  String? get baseCurrencySymbol => _baseCurrencySymbol;
  String? get defaultDisplayCurrencyCode => _defaultDisplayCurrencyCode;
  String? get defaultDisplayCurrencySymbol => _defaultDisplayCurrencySymbol;
  List<String>? get availableCurrencyCodes => _availableCurrencyCodes;
  List<Exchange_rates>? get exchangeRates => _exchangeRates;

  Currencies({
      String? baseCurrencyCode, 
      String? baseCurrencySymbol, 
      String? defaultDisplayCurrencyCode, 
      String? defaultDisplayCurrencySymbol, 
      List<String>? availableCurrencyCodes, 
      List<Exchange_rates>? exchangeRates}){
    _baseCurrencyCode = baseCurrencyCode;
    _baseCurrencySymbol = baseCurrencySymbol;
    _defaultDisplayCurrencyCode = defaultDisplayCurrencyCode;
    _defaultDisplayCurrencySymbol = defaultDisplayCurrencySymbol;
    _availableCurrencyCodes = availableCurrencyCodes;
    _exchangeRates = exchangeRates;
}

  Currencies.fromJson(dynamic json) {
    _baseCurrencyCode = json['base_currency_code'];
    _baseCurrencySymbol = json['base_currency_symbol'];
    _defaultDisplayCurrencyCode = json['default_display_currency_code'];
    _defaultDisplayCurrencySymbol = json['default_display_currency_symbol'];
    _availableCurrencyCodes = json['available_currency_codes'] != null ? json['available_currency_codes'].cast<String>() : [];
    if (json['exchange_rates'] != null) {
      _exchangeRates = [];
      json['exchange_rates'].forEach((v) {
        _exchangeRates?.add(Exchange_rates.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['base_currency_code'] = _baseCurrencyCode;
    map['base_currency_symbol'] = _baseCurrencySymbol;
    map['default_display_currency_code'] = _defaultDisplayCurrencyCode;
    map['default_display_currency_symbol'] = _defaultDisplayCurrencySymbol;
    map['available_currency_codes'] = _availableCurrencyCodes;
    if (_exchangeRates != null) {
      map['exchange_rates'] = _exchangeRates?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Exchange_rates {
  String? _currencyTo;
  double? _rate;

  String? get currencyTo => _currencyTo;
  double? get rate => _rate;

  Exchange_rates({
      String? currencyTo, 
      double? rate}){
    _currencyTo = currencyTo;
    _rate = rate;
}

  Exchange_rates.fromJson(dynamic json) {
    _currencyTo = json['currency_to'];
    _rate = json['rate'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['currency_to'] = _currencyTo;
    map['rate'] = _rate;
    return map;
  }

}