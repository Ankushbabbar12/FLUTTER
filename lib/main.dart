import 'package:flutter/material.dart';

void main() {
  runApp(const GeeksForGeeks());
}

class GeeksForGeeks extends StatelessWidget {
  const GeeksForGeeks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Material App
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Scaffold Widget
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _showHelloWorld = false;

  void _toggleHelloWorld() {
    setState(() {
      _showHelloWorld = !_showHelloWorld;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _showHelloWorld
            ? const Text('Hello World Ankush')
            : const Text('Ankush'),
        actions: [
          IconButton(
            icon: const Icon(Icons.message),
            onPressed: _toggleHelloWorld,
          ),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(color: Colors.blue),
        ),
      ),
      body: const Center(child: Text('Hello World')),
    );
  }
}

q