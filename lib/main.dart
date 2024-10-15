import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

enum CounterType { inc, dec }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _shingaraCounter = 0;
  int _shomochaCounter = 0;

  void _changeShingaraCounter(CounterType counterType) {
    setState(() {
      if (counterType == CounterType.inc) {
        _shingaraCounter++;
      } else {
        _shingaraCounter == 0 ? _shingaraCounter = 0 : _shingaraCounter--;
      }
    });
  }

  void _changeShomochaCounter(CounterType counterType) {
    setState(() {
      if (counterType == CounterType.inc) {
        _shomochaCounter++;
      } else {
        _shomochaCounter == 0 ? _shomochaCounter = 0 : _shomochaCounter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                ElevatedButton(
                    onPressed: () => _changeShingaraCounter(CounterType.inc),
                    child: const Icon(Icons.add)),
                Text(_shingaraCounter.toString()),
                ElevatedButton(
                    onPressed: () => _changeShingaraCounter(CounterType.dec),
                    child: const Icon(Icons.remove)),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () => _changeShomochaCounter(CounterType.inc),
                    child: const Icon(Icons.add)),
                Text(_shomochaCounter.toString()),
                ElevatedButton(
                    onPressed: () => _changeShomochaCounter(CounterType.dec),
                    child: const Icon(Icons.remove)),
              ],
            ),
            Text(
              'Total shingara: $_shingaraCounter',
              style: const TextStyle(fontSize: 20, color: Colors.green),
            ),
            Text('Total shomocha: $_shingaraCounter',
                style: const TextStyle(fontSize: 20, color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}
