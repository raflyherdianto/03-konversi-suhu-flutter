import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    Key? key,
    required TextEditingController inputUser,
  })  : _inputUser = inputUser,
        super(key: key);

  final TextEditingController _inputUser;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _inputUser,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        hintText: 'Masukkan Suhu Dalam Celcius',
      ),
    );
  }
}
