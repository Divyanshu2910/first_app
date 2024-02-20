import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';


class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  var namecontroller = TextEditingController();
  var contactcontroller = TextEditingController();
  var emailcontroller = TextEditingController();
  var addresscontroller = TextEditingController();
  var nameFocusNode = FocusNode();
  var contactFocusNode = FocusNode();
  var emailFocusNode = FocusNode();
  var addressFocusNode = FocusNode();

  checkValidations() {
    if (namecontroller.text.toString().isEmpty) {
      Fluttertoast.showToast(msg: "Enter name");
    } else if (contactcontroller.text.toString().isEmpty) {
      Fluttertoast.showToast(
        msg: "Enter contact no.",
      );
    } else if (emailcontroller.text.toString().isEmpty) {
      Fluttertoast.showToast(
        msg: "Enter email",
      );
    } else if (addresscontroller.text.toString().isEmpty) {
      Fluttertoast.showToast(
        msg: "Enter contact no.",
      );
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mirage",
          style: TextStyle(
              color: Color.fromARGB(255, 189, 62, 53),
              fontWeight: FontWeight.bold),
        ),
        actions: [
          InkWell(
            onTap: () {
              print("this is print");
              setState(() {});
            },
            child: const Icon(Icons.more_vert),
          )
        ],
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Employee Information",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    shadows: <Shadow>[
                      Shadow(blurRadius: 2, color: Colors.black)
                    ])),
            const Text(
              "First Name ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextField(
              focusNode: nameFocusNode,
              controller: namecontroller,
              decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  )),
              onSubmitted: (value) {
                if (namecontroller.text.toString().isEmpty) {
                  Fluttertoast.showToast(msg: "Enter name");
                } else {
                  contactFocusNode.requestFocus();
                }
              },
            ),
            const Text(
              "Contact No.",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextField(
                focusNode: contactFocusNode,
                controller: contactcontroller,
                keyboardType: TextInputType.phone,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                    )),
                onSubmitted: (value) {
                  if (contactcontroller.text.toString().isEmpty) {
                    Fluttertoast.showToast(msg: "Enter Contact Number");
                  } else {
                    emailFocusNode.requestFocus();
                  }
                }),
            const Text(
              "Email ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextField(
              focusNode: emailFocusNode,
              controller: emailcontroller,
              decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  )),
              onSubmitted: (value) {
                if (emailcontroller.text.toString().isEmpty) {
                  Fluttertoast.showToast(msg: "Enter email");
                } else {
                  addressFocusNode.requestFocus();
                }
              },
            ),
            const Text(
              "Address",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextField(
              focusNode: addressFocusNode,
              controller: addresscontroller,
              decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  )),
              onSubmitted: (value) {
                if (addresscontroller.text.toString().isEmpty) {
                  Fluttertoast.showToast(msg: "Enter Address");
                } else {}
              },
            ),
            Center(
              child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(5.0),
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Colors.black;
                          }
                          return Colors.grey; // Use the component's default.
                        },
                      )),
                  onPressed: () {
                    checkValidations();
                    Fluttertoast.showToast(
                        msg: "Saved", webBgColor: Colors.cyan);
                  },
                  child: const Text("Add Now")),
            )
          ],
        ),
      ),
    );
  }
}
