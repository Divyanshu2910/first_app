import 'package:flutter/material.dart';

class appbarscreen extends StatefulWidget {
  const appbarscreen({super.key});

  @override
  State<appbarscreen> createState() => _appbarscreenState();
}

class _appbarscreenState extends State<appbarscreen> {
  var feeds = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: const Text("leading bar"),
          actions: [
            Icon(Icons.abc),
            Text("$feeds"),
            InkWell(
              onTap: () {
                print("this is print");
                feeds++;
                setState(() {});
              },
              child: Icon(Icons.menu),
            )
          ],
          title: const Center(child: Text("this is app bar"))),
      body: const Column(children: [
        const Text("this is it"),
        Row(
          children: [Text("your x")],
        )
      ]),
    );
  }
}
