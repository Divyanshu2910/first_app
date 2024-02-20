import 'package:flutter/material.dart';

class replicate extends StatefulWidget {
  const replicate({super.key});

  @override
  State<replicate> createState() => _replicateState();
}

class _replicateState extends State<replicate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Dental",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
