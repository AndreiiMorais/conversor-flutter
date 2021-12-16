import 'package:conversor_flutter/src/controllers/home_controler.dart';
import 'package:conversor_flutter/src/models/currency.dart';
import 'package:flutter/material.dart';

class ModelCurrency extends StatelessWidget {
  final List<CurrencyModel> items;
  final CurrencyModel selectedItem;
  final TextEditingController control;
  final void Function(CurrencyModel? model)? onChanged;

  const ModelCurrency(
      {Key? key,
      required this.items,
      required this.control,
      required this.onChanged,
      required this.selectedItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 57,
            child: DropdownButton<CurrencyModel>(
              value: selectedItem,
              isExpanded: true,
              underline: Container(
                height: 2,
                color: Colors.green,
              ),
              items: items
                  .map((e) => DropdownMenuItem<CurrencyModel>(
                      value: e, child: Text(e.name)))
                  .toList(),
              onChanged: onChanged,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 2,
          child: TextField(
            controller: control,
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
