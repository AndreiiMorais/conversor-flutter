import 'package:conversor_flutter/src/models/currency.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  late List<CurrencyModel> currencies;
  TextEditingController fromText = TextEditingController();
  TextEditingController toText = TextEditingController();

  late CurrencyModel fromCurrency;
  late CurrencyModel toCurrency;
  HomeController({fromText, toText}) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert() {
    String text = fromText.text;
    double value = double.tryParse(text) ?? 1.0;
    //com o ?? se retornar nulo vai ser passado um valor qualquer
    double returnValue = 0;

    if (fromCurrency.name == 'Real') {
      returnValue = value * toCurrency.real;
    } else if (fromCurrency.name == 'Dolar') {
      returnValue = value * toCurrency.dolar;
    } else if (fromCurrency.name == 'Euro') {
      returnValue = value * toCurrency.euro;
    } else if (fromCurrency.name == 'Bitcoin') {
      returnValue = value * toCurrency.bitcoin;
    }

    toText.text = returnValue.toStringAsFixed(2);
  }
}
