import 'package:flutter/material.dart';

void main() => runApp(const ExpandedApp());

class ExpandedApp extends StatelessWidget {
  const ExpandedApp({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Expanded Column Sample')),
        body:  ExpandedExample(screenHeight: screenHeight,screenWidth: screenWidth,),
      ),
    );
  }
}
 
  
class ExpandedExample extends StatelessWidget {
  final  double screenHeight, screenWidth;
   const ExpandedExample({super.key,required this.screenHeight, required this.screenWidth});

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
                    Expanded(child: Row( children: <Widget>[Container(color: Colors.black, width:screenWidth * 0.75, child: Text ('', style: TextStyle(color: Colors.white))),]),),
                    
              ], 
            ),

      
           
                          //  Container(color: Colors.white, height: 3, width: 100),


            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // Centers children vertically
          crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(color: Colors.black, height: screenHeight * 0.13, width: screenWidth * 0.24, child: Text ('1', style: TextStyle(color: Colors.white))),
                  Container(color: Colors.white, height: 100, width: 3),
                  Container(color: Colors.black, height: screenHeight * 0.13, width: screenWidth * 0.24, ),//child: Image.asset('')
                  Container(color: Colors.white, height: 100, width: 3),
                ],
              ),
          ),
         Container(color: Colors.white, width:2, height: 3),
         
          Expanded(
            flex: 3,
            child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center, // Centers children vertically
         
            children: <Widget>[
               Container(color: Colors.black, height: screenHeight * 0.13, width: screenWidth * 0.24, child: Text ('2', style: TextStyle(color: Colors.white))),
              Container(color: Colors.white, height: 100, width: 3),
               Container(color: Colors.black, height: screenHeight * 0.13, width: screenWidth * 0.24, ),//child: Image.asset('')
              Container(color: Colors.white, height: 100, width: 3)
            ],
          ),
          ),
          
          Container(color: Colors.white,width: 2, height: 3),
          Expanded(
            flex:3,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center, // Centers children vertically
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
            
               Container(color: Colors.black,  height: screenHeight * 0.13, width: screenWidth * 0.24,   child: Text ('3', style: TextStyle(color: Colors.white))),
              Container(color: Colors.white,  width: 3),
               Container(color: Colors.black, height: screenHeight * 0.13, width: screenWidth * 0.24,  ),//child: Image.asset('')
              Container(color: Colors.white, width: 3)
            ],
            
          ),
          ),
         
           
          Container(color: Colors.white, width: screenWidth * 0.27, height: 1),
           Expanded(
            flex: 3,
            child:  const RecentDrinkWidget(),
          ),
          const Expanded(
            
            child: MyScreen(),
          ),
           
        ],
      
      ),
    );
  }
}

class RecentDrinkWidget extends StatelessWidget {
  const RecentDrinkWidget({super.key});


  @override
  Widget build(BuildContext context) {
        final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Center(
      

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Centers children vertically
        children: <Widget>[
          Container(color: Colors.black, height: screenHeight * 0.15, width: screenWidth * 0.25, ),//child:Image.asset('')
          Container(color: Colors.black, height: screenHeight * 0.15, width: screenWidth * 0.25 ),//child:Image.asset('')
          Container(color: Colors.black, height: screenHeight * 0.15, width: screenWidth * 0.25 ),//child:Image.asset('')
          Container(color: Colors.black, height: screenHeight * 0.15, width: screenWidth * 0.25, ),//child:Image.asset('')
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
          body:  Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centers children vertically
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, 
                  children: [
                  ElevatedButton(
                    onPressed: () {
                      debugPrint('button press');
                      setState(() {
                        _showOtherWidget = !_showOtherWidget; // Toggle visibility
                      });
                    },
                    child: const Text('+'),
                  ),
                  if (_showOtherWidget) // Conditionally render the other widget
                    const OtherWidget(),
                ],
                ),
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