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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Snack Bar(아래에 뜨는 모달창)'),
          centerTitle: true,
        ),
        body: Builder(
          builder: (ctx) => Center(
              child: ElevatedButton(
                  child: const Text('Show me',
                      style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    const snackBar = SnackBar(
                      content: Text('Hello'),
                    );
                    ScaffoldMessenger.of(ctx).showSnackBar(snackBar);
                  })),
        ),
      ),
    );
  }
}
