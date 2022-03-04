import 'package:flutter/material.dart';

class KelvinReamur extends StatelessWidget {
  const KelvinReamur({
    Key? key,
    required double kelvin,
    required double reamur,
  })  : _kelvin = kelvin,
        _reamur = reamur,
        super(key: key);

  final double _kelvin;
  final double _reamur;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            const Text('Suhu dalam Kelvin'),
            const SizedBox(height: 15),
            Text(
              '' + _kelvin.toStringAsFixed(2),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Column(
          children: [
            const Text('Suhu dalam Reamur'),
            const SizedBox(height: 15),
            Text(
              '' + _reamur.toStringAsFixed(2),
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
