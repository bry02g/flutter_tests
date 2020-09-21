import 'package:flutter/material.dart';
import 'package:tests_hw/widgets/ConverterCard.dart';

class ConversionScreen extends StatefulWidget {
  @override
  _ConversionScreenState createState() => _ConversionScreenState();
}

class _ConversionScreenState extends State<ConversionScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seconds Formater Calculator'),
      ),
      body: Center(
        child: ConverterCard(),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
