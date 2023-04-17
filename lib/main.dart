import 'package:expenses_app/widgets/function_add.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Expenses",
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.amber,
                height: 100,
                width: double.infinity,
                child: const Card(
                  child: Text("chart!!"),
                ),
              ),
              const UserTrasnaction(),
            ],
          ),
        ),
      ),
    );
  }
}
