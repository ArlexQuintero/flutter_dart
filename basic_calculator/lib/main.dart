import 'package:flutter/material.dart';

void main() {
  runApp(const MyCalculator());
}

class MyCalculator extends StatelessWidget {
  const MyCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: true, home: Calculator());
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final TextEditingController number1Controller = TextEditingController();
  final TextEditingController number2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora Básica'),
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
        String result = '',
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: number1Controller,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(labelText: 'Primer número'),
              ),

              SizedBox(height: 10),
              TextField(
                controller: number2Controller,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(labelText: 'Segúndo Número'),
              ),
              ElevatedButton(
                onPressed: () {
                  double number1 = double.parse(number1Controller.text);
                  double number2 = double.parse(number2Controller.text);
                  double result = number1 + number2;
                  print(result);  
                },
                child: Text('sumar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
