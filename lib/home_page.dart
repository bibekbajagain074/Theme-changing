import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();
  String message = "";
  Color ThemColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemColor,
        centerTitle: true,
        title: Text("Message"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            // ignore: duplicate_ignore
            child: Container(
              width: 400.0,
              height: 260.0,
              color: ThemColor,
              // ignore: prefer_const_constructors
              child: Center(
                // ignore: prefer_const_constructors
                child: Text(
                  message,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                controller: controller,
                maxLength: 30,
                onChanged: (String newValue) {
                  setState(() {
                    message = newValue;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 2,
                    color: ThemColor,
                  )),
                  hintText: 'Your message',
                  helperText: "Write your message in this field",
                  prefixIcon: Icon(
                    Icons.edit,
                    color: ThemColor,
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                controller.clear();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: ThemColor,
                textStyle: TextStyle(fontSize: 16.0),
                elevation: 10,
                shadowColor: ThemColor,
              ),
              child: Text("Clear Text"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        setState(() {
                          ThemColor = Colors.red;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 24,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          ThemColor = Colors.blue;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 24,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          ThemColor = Colors.green;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 24,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          ThemColor = Colors.orange;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
