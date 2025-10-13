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

   runApp(const MyApp());
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










class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 184, 16, 16)),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
