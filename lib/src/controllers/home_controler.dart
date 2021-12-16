import 'package:conversor_flutter/src/models/currency.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  late List<CurrencyModel> currencies;
  TextEditingController fromText = TextEditingController();
  TextEditingController toText = TextEditingController();

  late CurrencyModel fromCurrency;
  late CurrencyModel toCurrency;
  HomeControler() {
    currencies = CurrencyModel.getCurrencies();
    fromCurrency = currencies[0];
    toCurrency = currencies[1];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text) ?? 1.0;
    //com o ?? se retornar nulo vai ser passado um valor qualquer
    double returnValue = 0;

    if (toCurrency.name == 'Real') {
      returnValue = value * fromCurrency.real;
    } else if (toCurrency.name == 'Dolar') {
      returnValue = value * fromCurrency.dolar;
    } else if (toCurrency.name == 'Euro') {
      returnValue = value * fromCurrency.euro;
    } else if (toCurrency.name == 'Bitcoin') {
      returnValue = value * fromCurrency.bitcoin;
    }

    toText.text = returnValue.toStringAsFixed(2);
  }
}
