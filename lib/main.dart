import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets Básicos',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widgets en Flutter'),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            color: Colors.blue[50],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Texto con el widget Text',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.star, color: Colors.amber),
                    Text('Widget Row'),
                    Icon(Icons.star_border, color: Colors.amber),
                  ],
                ),
                const SizedBox(height: 20),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      color: Colors.purple[100],
                    ),
                    const Text('Stack'),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(12),
                  color: Colors.green[100],
                  child: const Text('Este es un Container'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
