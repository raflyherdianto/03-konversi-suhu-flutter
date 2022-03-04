import 'package:flutter/material.dart';

class FahrenheitCelcius extends StatelessWidget {
  const FahrenheitCelcius({
    Key? key,
    required double fahrenheit,
    required double celcius,
  })  : _fahrenheit = fahrenheit,
        _celcius = celcius,
        super(key: key);

  final double _fahrenheit;
  final double _celcius;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            const Text('Suhu dalam Fahrenheit'),
            const SizedBox(height: 15),
            Text(
              '' + _fahrenheit.toStringAsFixed(2),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Column(
          children: [
            const Text('Suhu dalam Celcius'),
            const SizedBox(height: 15),
            Text(
              '' + _celcius.toStringAsFixed(2),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
