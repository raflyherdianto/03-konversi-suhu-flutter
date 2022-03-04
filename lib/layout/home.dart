import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:statefull_widget/layout/color_palette.dart';
import 'package:statefull_widget/method/inputs.dart';
import 'package:statefull_widget/method/show_method1.dart';
import 'package:statefull_widget/method/show_method2.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _inputUser = TextEditingController();

  double _celcius = 0;
  double _kelvin = 0;
  double _reamur = 0;
  double _fahrenheit = 0;

  void konversi() {
    setState(() {
      _celcius = double.parse(_inputUser.text);
      _reamur = (4 / 5) * _celcius;
      _kelvin = _celcius + 273.15;
      _fahrenheit = _celcius * 1.8 + 32;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: ColorPalette.purpleColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mochammad Rafly Herdianto\n2031710008"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InputWidget(inputUser: _inputUser),
              KelvinReamur(kelvin: _kelvin, reamur: _reamur),
              FahrenheitCelcius(fahrenheit: _fahrenheit, celcius: _celcius),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: ColorPalette.purpleColor,
                  ),
                  onPressed: () {
                    konversi();
                  },
                  child: const Text(
                    'Konversi Suhu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
