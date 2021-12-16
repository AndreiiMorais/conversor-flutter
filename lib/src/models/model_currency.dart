import 'package:flutter/material.dart';

class ModelCurrency extends StatelessWidget {
  const ModelCurrency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 57,
            child: DropdownButton(
              isExpanded: true,
              underline: Container(
                height: 2,
                color: Colors.green,
              ),
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
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        const Expanded(
          flex: 2,
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
