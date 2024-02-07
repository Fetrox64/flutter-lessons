import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  CounterScreenState createState() => CounterScreenState();
}

class CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _incrementCounter() {
    _counter++;
    setState(() {});
  }

  void _decreaseCounter() {
    _counter--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[900],
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Mi nueva app'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'decrease',
            onPressed: _decreaseCounter,
            child: const Icon(Icons.exposure_minus_1),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'increase',
            onPressed: _incrementCounter,
            child: const Icon(Icons.plus_one),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_counter',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
