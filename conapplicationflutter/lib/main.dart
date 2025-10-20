import 'package:conapplicationflutter/energydrink.dart';
import 'package:flutter/material.dart';
import 'dart:io';

List allDrinks = [];

List topThree = ['one','two','three'];


void main() {
  addDrink("Original");
  addDrink("Lo Carb");
  addDrink("Absolutly Zero");
  addDrink("M-80");
  addDrink("Khaos");
  addDrink("Ripper");
  addDrink("MIXXD");
  addDrink("Cuba-Lima");
  addDrink("Zero Ultra");
  addDrink("Ultra Red");
  addDrink("Ultra Blue");
  addDrink("Ultra Violet");
  addDrink("Ultra Citron");
  addDrink("Ultra Sunrise");
  addDrink("Ultra Black");
  addDrink("Ultra Paradise");
  addDrink("Ultra Fiesta");
  addDrink("Ultra Rosa");
  addDrink("Juiced Ripper");
  addDrink("Mango Loco");
  addDrink("Juice Khaos");
  addDrink("Pacific Punch");
  addDrink("Lewis Hamilton 44");
  addDrink("the Doctor");
  addDrink("Gronk");
  addDrink("Nitrous Super Dry");
  addDrink("Nitrous Killer B");
  addDrink("Nitrous Anti-Gravity");
  addDrink("Nitrous Black Ice");
  addDrink("Mixxd Punch Energy");
  addDrink("Baller's Blend");
  addDrink("Mad Dog");
  addDrink("Pipeline Punch");
  addDrink("Rehab Lemonade");
  addDrink("Rehab Orangeade");
  addDrink("Rehab Peach");
  addDrink("Rehab Pink Lemonade");
  addDrink("Rehab Rojo Tea");
  addDrink("Rehab Green Tea");
  addDrink("Rehab Protean");
  addDrink("Hydro Mean Green");
  addDrink("Hydro Tropical Thunder");
  addDrink("Hydro Manic Melon");
  addDrink("Hydro Purple Passion");
  addDrink("Hydro Blue Ice");
  addDrink("Hydro Zero Sugar");
  addDrink("Java Vanilla Light");
  addDrink("Java Kona Blend");
  addDrink("Java Irish Blend");
  addDrink("Java Mean Bean");
  addDrink("Java Loca Moca");
  addDrink("Java Cappucino");
  addDrink("Java Toffee");
  addDrink("Swiss Chocolate");
  addDrink("Java Chai-Hai");
  addDrink("Java Russian Blend");
  addDrink("Java Nut-Up");
  addDrink("Java Big Black");
  addDrink("Java Lo-Ball");
  addDrink("Java Salted Caramel");
  addDrink("Espresso & Cream");
  addDrink("Espresso Vanilla");
  addDrink("Muscle Chocolate");
  addDrink("Muscle Vanilla");
  addDrink("Muscle Strawberry");
  addDrink("Muscle Banana");
  addDrink("Muscle Caffe Latte");
  addDrink("X-Presso Hammer");
  addDrink("X-Presso Midnite");
  addDrink("MAXX Eclipse");
  addDrink("MAXX Solaris");
  addDrink("MAXX Super Dry");
  addDrink("M-100 Ghost");
  addDrink("M-100 Phantom");
  addDrink("Mutant Original Green");
  addDrink("Mutant Red Dawn");
  addDrink("Mutant White Lightning");
  addDrink("Unleaded");
  addDrink("Import");
  addDrink("Import Light");
  addDrink("DUB");
  addDrink("Heavy Metal");
  addDrink("Assault");
  addDrink("Extrastrength");
  addDrink("Brew Ubermonster");
  addDrink("Cuba-Libre");
  addDrink("Extra Strenght M3");
  addDrink("Mule Ginger Brew");


  for (Energydrink energy in allDrinks) {
    energy.printDrinkProfile();
  }

runApp(const ExpandedApp());
}

void addDrink(String flavor){
  var energy = Energydrink(flavor, "Monster", allDrinks.length + 1);
  allDrinks.add(energy);
return;
}


int alreadyAdded(String brand, String flavor){

  for (Energydrink energy in allDrinks){
    if(energy.getBrand()== brand){
      if(energy.getName()==flavor){
        return energy.getID();
      }
    }
  }
  return -1;
}



void rankADrink(){
bool firstLoop = true;

  while(firstLoop){
  print("What is the brand of the drink>");
String brand  = stdin.readLineSync().toString();
  print("What is the flavor of the drink>");
String flavor  = stdin.readLineSync().toString();
int ID = alreadyAdded(brand, flavor);

if(ID==-1){
  print("Drink does not exist");
  continue;
}
print("What is the rank of the drink? (first second or third)");
int place = int.parse(stdin.readLineSync().toString());
topThree[place-1] = ID;

}

}









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