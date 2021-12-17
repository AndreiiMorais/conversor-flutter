import 'package:conversor_flutter/src/controllers/home_controler.dart';
import 'package:conversor_flutter/src/models/currency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController fromText = TextEditingController();
  final TextEditingController toText = TextEditingController();
  final homecontroller = HomeController(toText, fromText);

  test('deve converter de dolar para real', () {
    toText.text = '2.0';
    homecontroller.toCurrency = CurrencyModel(
        name: 'Dolar', real: 5.65, dolar: 1.0, euro: 0.85, bitcoin: 0.000088);
    homecontroller.fromCurrency = CurrencyModel(
        name: 'Real', real: 1.0, dolar: 0.18, euro: 0.15, bitcoin: 0.000016);
    homecontroller.convert();
    expect(fromText.text, '11.30');
  });
}
