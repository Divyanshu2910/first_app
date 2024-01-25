import 'package:flutter/material.dart';

class restaurant extends StatefulWidget {
  const restaurant({super.key});

  @override
  State<restaurant> createState() => _restaurantState();
}

class _restaurantState extends State<restaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("Corn salad with red beans"),centerTitle: true,),

      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "images/image.jpg",
                height: 200,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              const Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      "Corn Salad With Red Beans",
                      style: TextStyle(color: Colors.red, fontSize: 28),
                    ),
                  )),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.restaurant,
                      color: Colors.red,
                    ),
                    Text("305.5"),
                    Text("Calories"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.alarm,
                      color: Colors.red,
                    ),
                    Text("20mins"),
                    Text("Time")
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.groups,
                      color: Colors.red,
                    ),
                    Text("4"),
                    Text("Serve")
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.red,
                    ),
                    Text("8"),
                    Text("Count")
                  ],
                ),
              ),
            ],
          ),
          const Row(
            children: [
              Text(
                "Ingredients Required",
                style: TextStyle(fontSize: 28, color: Colors.red),
              ),
            ],
          ),
          Container(
              color: Colors.black12,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(children: [
                  Icon(
                    Icons.add_circle,
                    color: Colors.green,
                  ),
                  Text(
                    "this is pepper",
                  )
                ]),
              )),
          Container(
              color: Colors.black38,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(children: [
                  Icon(
                    Icons.remove_circle,
                    color: Colors.red,
                  ),
                  Text(
                    "this is pepper",
                  )
                ]),
              ))
        ],
      ),
    );
  }
}
