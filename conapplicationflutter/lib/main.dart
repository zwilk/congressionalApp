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
String? _selectedValue; // Can be null initially
List<String> _dropdownItems = ['Option 1', 'Option 2', 'Option 3'];
class HomePage extends StatelessWidget {
  late double _deviceHeight;
  late double _deviceWidth;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center, // Centers children vertically
  
        
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // Centers children vertically
         
            children: <Widget>[
              
                CircleAvatar(     
                  radius: 40, // Defines the size of the circle
                  backgroundColor: Colors.black, // Background color of the avatar
                 // backgroundImage: AssetImage(''), // Optional background image
                ),
                  Container(color: Colors.black, height: 33, width: 150, child: Text ('', style: TextStyle(color: Colors.white))),
            ], 
          ),
          Container(height: 50,width: 100),
          Container(color: Colors.white, width: 100, height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // Centers children vertically
      
            children: <Widget>[
              Container(color: Colors.black, height: 100, width: 100, child: Text ('1', style: TextStyle(color: Colors.white))),
              Container(color: Colors.white, height: 100, width: 3),
              Container(color: Colors.black, height: 100, width: 100, ),//child: Image.asset('')
              Container(color: Colors.white, height: 100, width: 3)
            ],
          ),
          Container(color: Colors.white, width: 100, height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // Centers children vertically
         
            children: <Widget>[
              Container(color: Colors.black, height: 100, width: 100, child: Text ('2', style: TextStyle(color: Colors.white))),
              Container(color: Colors.white, height: 100, width: 3),
              Container(color: Colors.black, height: 100, width: 100, ),//child: Image.asset('')
              Container(color: Colors.white, height: 100, width: 3)
            ],
          ),
          Container(color: Colors.white, width: 100, height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // Centers children vertically
      
            children: <Widget>[
              Container(color: Colors.black, height: 100, width: 100, child: Text ('3', style: TextStyle(color: Colors.white))),
              Container(color: Colors.white, height: 100, width: 3),
              Container(color: Colors.black, height: 100, width: 100, ),//child: Image.asset('')
              Container(color: Colors.white, height: 100, width: 3)
            ],
          ),
            
          Container(color: Colors.white, width: 100, height: 3),
          Container(height: 50,width: 100),
          const RecentDrinkWidget(),
          // const MyScreen(),
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
          Container(color: Colors.black, height: 100, width: 100, ),//child:Image.asset('')
          Container(color: Colors.black, height: 100, width: 100, ),//child:Image.asset('')
          Container(color: Colors.black, height: 100, width: 100, ),//child:Image.asset('')
          Container(color: Colors.black, height: 100, width: 100, ),//child:Image.asset('')
        ],
      ),
    );
  }
  
}
class MyScreen extends StatefulWidget {
      const MyScreen({super.key});

      @override
      State<MyScreen> createState() => _MyScreenState();
    }

    class _MyScreenState extends State<MyScreen> {
      bool _showOtherWidget = false; // State variable to control visibility

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(title: const Text('Button to Open Widget')),
          body:  Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _showOtherWidget = !_showOtherWidget; // Toggle visibility
                    });
                  },
                  child: const Text('Toggle Other Widget'),
                ),
                if (_showOtherWidget) // Conditionally render the other widget
                  const OtherWidget(),
              ],
        )
        );
      }
    }
    class OtherWidget extends StatelessWidget {
      const OtherWidget({super.key});

      @override
      Widget build(BuildContext context) {
        return Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          color: Colors.blueAccent,
          child: const Text(
            'This is the widget opened by the button!',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        );
      }
    }