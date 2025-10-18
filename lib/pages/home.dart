import 'package:flutter/material.dart';
import 'package:flutter_fitness/pages/profile.dart';
import 'package:flutter_fitness/services/support_widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is home Screen"),
        backgroundColor: Colors.amber,
        titleTextStyle: TextStyle(
          color: Colors.lightBlue,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      '<https://i.pravatar.cc/150?img=1>',
                    ),
                  ),
                  Text(
                    "Count: $_counter",
                    style: AppWidget.headlineTextStyle(20.0),
                  ),
                  ElevatedButton(
                    onPressed: _incrementCounter,
                    // style: ButtonStyle(backgroundColor: ),
                    child: Text("Tap to increase!"),
                  ),
                  Icon(Icons.verified, color: Colors.blue),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
