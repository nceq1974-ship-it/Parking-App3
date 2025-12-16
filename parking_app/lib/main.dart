import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String backendUrl =
      'https://REPLACE_WITH_YOUR_CODESPACE_ID-4000.preview.app.github.dev';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Parking App')),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              final res = await http.get(Uri.parse(backendUrl));
              print(res.body);
            },
            child: const Text('Ping Backend'),
          ),
        ),
      ),
    );
  }
}
