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
          Row(
              mainAxisAlignment: MainAxisAlignment.center, // Centers children vertically
              crossAxisAlignment: CrossAxisAlignment.center,// Centers children horizontally
              children: <Widget>[
              Container(color: Colors.white, height: 100, width: 100, child: Text ('1')),
              Container(color: Colors.black, height: 100, width: 100, child: Image.asset('')),
            ],
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Centers children vertically
              crossAxisAlignment: CrossAxisAlignment.center,// Centers children horizontally
              children: <Widget>[
                Container(color: Colors.white, height: 100, width: 100, child: Text ('2')),
                Container(color: Colors.black, height: 100, width: 100, child: Image.asset('')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Centers children vertically
              crossAxisAlignment: CrossAxisAlignment.center,// Centers children horizontally
              children: <Widget>[
                Container(color: Colors.white, height: 100, width: 100, child: Text ('3')),
                Container(color: Colors.black, height: 100, width: 100, child: Image.asset('')),
              ],
            ),
            
            Container(),
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
          Container(color: Colors.black, height: 100, width: 100),
          Container(color: Colors.black, height: 100, width: 100),
          Container(color: Colors.black, height: 100, width: 100),
          Container(color: Colors.black, height: 100, width: 100),
        ],
      ),
    );
  }
  
}