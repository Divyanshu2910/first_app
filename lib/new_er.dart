import 'package:flutter/material.dart';

class newer extends StatefulWidget {
  const newer({super.key});

  @override
  State<newer> createState() => _newerState();
}

class _newerState extends State<newer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Text("leading bar"),
          title: const Text(
            "additon",
            style: TextStyle(color: Colors.blueGrey),
          ),
          backgroundColor: Colors.blue,
          actions: [
            InkWell(
              onTap: () {},
              child: const Icon(Icons.abc),
            )
          ],
        ),
        body: const Column(
          children: [
            Text("dopppp"),
            Icon(Icons.restaurant_rounded, color: Colors.red),
          ],
        ));
  }
}
