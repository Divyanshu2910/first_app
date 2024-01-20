import 'package:flutter/material.dart';

class newscreen1 extends StatefulWidget {
  const newscreen1({super.key});

  @override
  State<newscreen1> createState() => _newscreen1State();
}

class _newscreen1State extends State<newscreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("this is tittle"),
      ),
      body: Column(
        children: [
          Text("Stawberry"),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
                "this is yo yo funny singh here come for singing if u want to here song okay than get out"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.blue,
                  ),
                ],
              ),
              Text("168 Reviews"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Icon(Icons.restaurant),
                  Text("Prep:"),
                  Text("12-20 mins")
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(Icons.restaurant),
                    Text("Prep:"),
                    Text("12-20 mins"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Icon(Icons.schedule),
                    Text("Opening"),
                    Text("24 hrs")
                  ],
                ),
              ),
              Column(
                children: [Icon(Icons.coffee), Text("coffee"), Text("Hot")],
              ),
            ],
          )
        ],
      ),
    );
  }
}
