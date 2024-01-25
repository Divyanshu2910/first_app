// ignore_for_file: camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';

class appview extends StatefulWidget {
  const appview({super.key});

  @override
  State<appview> createState() => appviewState();
}

class appviewState extends State<appview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 199, 223, 243),
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: (Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage("images/ui.jpg")),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(300),
                        bottomRight: Radius.circular(300))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("images/person.png"))),
                    ),
                    const Text(
                      "User",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )
                  ],
                ),
              ))),
          Positioned(
            height: 440,
            child: Center(
              child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 100,
                                width: 100,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.white,
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.home,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "Home",
                                      style: TextStyle(color: Colors.blueGrey),
                                    )
                                  ],
                                )),
                            Container(
                                height: 100,
                                width: 100,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.white,
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.devices,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "Devices",
                                      style: TextStyle(color: Colors.blueGrey),
                                    )
                                  ],
                                )),
                          ])
                    ],
                  )),
            ),
          ),
          Positioned(
            height: 740,
            child: Center(
              child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 100,
                                width: 100,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.white,
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.library_books,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "Books",
                                      style: TextStyle(color: Colors.blueGrey),
                                    )
                                  ],
                                )),
                            Container(
                                height: 100,
                                width: 100,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.white,
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.receipt_long,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "Bills",
                                      style: TextStyle(color: Colors.blueGrey),
                                    )
                                  ],
                                )),
                          ])
                    ],
                  )),
            ),
          ),
          Positioned(
            height: 1000,
            child: Center(
              child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 100,
                                width: 100,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.white,
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.work_history,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "History",
                                      style: TextStyle(color: Colors.blueGrey),
                                    )
                                  ],
                                )),
                            Container(
                                height: 100,
                                width: 100,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.white,
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.settings,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "Settings",
                                      style: TextStyle(color: Colors.blueGrey),
                                    )
                                  ],
                                )),
                          ])
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
