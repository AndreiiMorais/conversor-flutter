import 'dart:html';
import 'dart:ui';

import 'package:conversor_flutter/src/models/currency.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(children: [
          Image.asset('asset/logo.png'),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Row(
              children: [
                DropdownButton(
                  items: const [
                    DropdownMenuItem(
                      value: 1,
                      child: Text('Real'),
                    ),
                    DropdownMenuItem(
                      value: 2,
                      child: Text('Dolar'),
                    ),
                  ],
                  onChanged: (value) {},
                ),
                const TextField(),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('CONVERTER'),
          )
        ]),
      ),
    );
  }
}
