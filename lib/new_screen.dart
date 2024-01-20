import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget{
  const NewScreen({super.key});
  
  @override
  State <NewScreen> createState() => _NewScreenState();

}

class _NewScreenState extends State<NewScreen>{
  var reviews = 0;
  var feeds = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(


          primary: false,
          backgroundColor: Colors.green,
          title: const Center(child: Text(
            "This is first screen",
            // style: TextStyle(
            //     color: Color.fromARGB(255, 173, 35, 35),
            //     fontSize: 34,
            //     fontWeight: FontWeight.bold),
          ),),
        ),
        body: Column(
          children: [
            const Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra tellus lacus, eget ullamcorper mauris vestibulum sed. Pellentesque sagittis efficitur ligula in porttitor. Nulla consequat vulputate ante ac viverra. Etiam eu rutrum purus. Proin at gravida nunc. Quisque nec est id mauris facilisis porttitor. Aenean aliquam commodo risus sed tincidunt. Cras dapibus et leo non tristique. Fusce mollis dui eget suscipit dictum. Donec ut pellentesque neque, vitae convallis enim. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus pretium massa nulla. Curabitur malesuada urna a erat aliquet, quis tempus lacus gravida.")),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //  crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                    ],
                  ),
                  Text("$reviews Reviews")
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Column(
                  children: [
                    Icon(Icons.book),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text("PREP:"),
                    ),
                    Text("25 min")
                  ],
                ),
                const Column(
                  children: [
                    Icon(Icons.alarm),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text("COOK:"),
                    ),
                    Text("1 Hour")
                  ],
                ),
                Column(
                  children: [
                    const Icon(Icons.restaurant),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text("FEED:"),
                    ),
                    Text("$feeds")
                  ],
                )
              ],
            )
          ],
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            reviews++;
            feeds = feeds + 4;
            setState(() {});
            print("Button clicked");
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}