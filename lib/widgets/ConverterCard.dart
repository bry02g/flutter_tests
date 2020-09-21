import 'package:flutter/material.dart';
import 'package:tests_hw/utils/TimeFormater.dart';
import "package:flutter/services.dart";

class ConverterCard extends StatefulWidget {
  @override
  _ConverterCardState createState() => _ConverterCardState();
}

class _ConverterCardState extends State<ConverterCard> {
  TextEditingController inputController = TextEditingController();
  String formatedTimeText = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  formatedTimeText,
                  key: Key('formated-time'),
                  style: TextStyle(fontSize: 50),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Enter Time', key: Key('input-texfield-label')),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: TextField(
                      key: Key('seconds-textfield'),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        WhitelistingTextInputFormatter.digitsOnly
                      ],
                      controller: inputController,
                    ),
                  ),
                  RaisedButton(
                    key: Key('convert-button'),
                    child: Text('Convert'),
                    color: Colors.blue,
                    onPressed: () {
                      String input = inputController.text;
                      print(input);
                      int seconds = int.parse(input);
                      String formatedTime =
                          TimeFormater.formatTimeFromSeconds(seconds);

                      setState(() {
                        formatedTimeText = formatedTime;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
