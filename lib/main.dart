import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MyCounter(
        title: 'My flutter Demo Home Page',
      ),
    );
  }
}

class MyCounter extends StatefulWidget {
  final String title;
  const MyCounter({Key? key, required this.title}) : super(key: key);

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.account_circle_rounded),
        title: Text(widget.title),
        centerTitle: true,
        elevation: 10, //shadow in bottom
        toolbarHeight: 70, // default is 56
        toolbarOpacity: 0.6, //between 0 - 1
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Click bottom button",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              "$_counter",
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}
