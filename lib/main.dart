import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Haptic test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Haptic test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
              onPressed: () => HapticFeedback.heavyImpact(),
              child: const Text("Heavy Impact"),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () => HapticFeedback.mediumImpact(),
              child: const Text("Medium Impact"),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () => HapticFeedback.lightImpact(),
              child: const Text("Light Impact"),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () => HapticFeedback.vibrate(),
              child: const Text("Vibrate"),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () => HapticFeedback.selectionClick(),
              child: const Text("Selection Click"),
            ),
          ],
        ),
      ),
    );
  }
}
