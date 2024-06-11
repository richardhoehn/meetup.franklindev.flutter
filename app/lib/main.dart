import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Franklin Dev Meetup'),
        ),
        body: Center(
          //child: Text('Hello World! Nice!'),
          //child: ButtonWidget(),
          child: DemoStatefulWidget(),
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print('Button Pressed');
      },
      child: const Row(
        children: [
          Text('Add to cart'),
          Icon(Icons.shopping_cart),
        ],
      ),
    );
  }
}

class DemoStatefulWidget extends StatefulWidget {
  const DemoStatefulWidget({super.key});

  @override
  _DemoStatefulWidgetState createState() => _DemoStatefulWidgetState();
}

class _DemoStatefulWidgetState extends State<DemoStatefulWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Counter: $_counter'),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: const Text('Increment'),
        ),
      ],
    );
  }
}
