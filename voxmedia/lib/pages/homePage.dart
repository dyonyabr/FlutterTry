import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String str = 'qqq';
  bool isEdit = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                str = 'qwe';
                isEdit = false;
              });
            },
            child: Container(
              child: Text(str),
              width: 100,
              height: 100,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  border: isEdit == true
                      ? Border.all(color: Colors.black, width: 3)
                      : Border.all(color: Colors.red, width: 20)),
            ),
          ),
          Text("data"),
        ],
      ),
    );
  }
}
