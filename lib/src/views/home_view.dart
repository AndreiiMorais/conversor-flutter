import 'package:conversor_flutter/src/controllers/home_controler.dart';
import 'package:conversor_flutter/src/models/currency.dart';
import 'package:conversor_flutter/src/models/model_currency.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController fromText = TextEditingController();

  final TextEditingController toText = TextEditingController();

  var homeController = HomeController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController = HomeController(fromText: fromText, toText: toText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100, right: 30, left: 30),
            child: Column(
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 150,
                  height: 150,
                ),
                ModelCurrency(
                  selectedItem: homeController.fromCurrency,
                  control: fromText,
                  items: homeController.currencies,
                  onChanged: (model) {
                    setState(() {
                      homeController.fromCurrency = model!;
                    });
                  },
                ),
                SizedBox(height: 20),
                ModelCurrency(
                  selectedItem: homeController.toCurrency,
                  control: toText,
                  items: homeController.currencies,
                  onChanged: (model) {
                    setState(() {
                      homeController.toCurrency = model!;
                    });
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green, elevation: 20),
                  onPressed: () {
                    homeController.convert();
                  },
                  child: Text('CONVERTER'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
