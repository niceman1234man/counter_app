import 'package:flutter/material.dart';
import 'homepage.dart';

class myHomePageState extends State<HomePageState> {
  int counter = 0;
  void increamentCounter() {
    setState(() {
      counter++;
    });
  }

  void decreamentCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'counter demo',
          style: TextStyle(
              color: Color.fromARGB(255, 232, 234, 235), fontSize: 30.3),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image:
                    AssetImage("assets/images/photo_2024-04-30_09-09-13.jpg"),
                scale: 1.0,
                fit: BoxFit.cover)),
        child: Center( // Wrap the Column with Center widget
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("counter $counter",style:const TextStyle(fontSize: 28),),
              // Text('decreament'),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: decreamentCounter,
            tooltip: 'decreament',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: increamentCounter,
            tooltip: 'increament',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}