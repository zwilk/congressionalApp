import 'package:flutter/material.dart';

void main() => runApp(const ExpandedApp());

class ExpandedApp extends StatelessWidget {
  const ExpandedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Expanded Column Sample')),
        body: const ExpandedExample(),
      ),
    );
  }
}

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Centers children vertically
        crossAxisAlignment: CrossAxisAlignment.center,// Centers children horizontally
        children: <Widget>[
          CircleAvatar(
  radius: 40, // Defines the size of the circle
  backgroundColor: Colors.black, // Background color of the avatar
  backgroundImage: AssetImage(''), // Optional background image
),
Container(height: 50,width: 100),
          Row(
              mainAxisAlignment: MainAxisAlignment.center, // Centers children vertically
              crossAxisAlignment: CrossAxisAlignment.center,// Centers children horizontally
              children: <Widget>[
              Container(color: Colors.black, height: 100, width: 100, child: Text ('1', style: TextStyle(color: Colors.white))),
              Container(color: Colors.black, height: 100, width: 100, child: Image.asset('')),
            ],
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Centers children vertically
              crossAxisAlignment: CrossAxisAlignment.center,// Centers children horizontally
              children: <Widget>[
                Container(color: Colors.black, height: 100, width: 100, child: Text ('2', style: TextStyle(color: Colors.white))),
                Container(color: Colors.black, height: 100, width: 100, child: Image.asset('')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Centers children vertically
              crossAxisAlignment: CrossAxisAlignment.center,// Centers children horizontally
              children: <Widget>[
                Container(color: Colors.black, height: 100, width: 100, child: Text ('3', style: TextStyle(color: Colors.white))),
                Container(color: Colors.black, height: 100, width: 100, child: Image.asset('')),
              ],
            ),
            
            Container(height: 50,width: 100),
            const RecentDrinkWidget(),
        ],
      ),
    );
  }
}

class RecentDrinkWidget extends StatelessWidget {
  const RecentDrinkWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Centers children vertically
        children: <Widget>[
          Container(color: Colors.black, height: 100, width: 100,child: Image.asset('')),
          Container(color: Colors.black, height: 100, width: 100,child: Image.asset('')),
          Container(color: Colors.black, height: 100, width: 100,child: Image.asset('')),
          Container(color: Colors.black, height: 100, width: 100,child: Image.asset('')),
        ],
      ),
    );
  }
  
}