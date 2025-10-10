import 'package:conapplicationflutter/energydrink.dart';
import 'package:flutter/material.dart';
import 'dart:io';

List allDrinks = [];

void main() {
  runApp(const MyApp());
  addDrink();
  
  for (Energydrink energy in allDrinks) {
    energy.printDrinkProfile();
  }
  
}

void addDrink(){
  print("What is the brand of the drink>");
String brand  = stdin.readLineSync().toString();
  print("What is the flavor of the drink>");
String flavor  = stdin.readLineSync().toString();
int ID = alreadyAdded(brand, flavor);
if(ID  == -1){
  var energy = new Energydrink(flavor, brand, allDrinks.length + 1);
  allDrinks.add(energy);
  print("New drink added!");
  return;
}
  allDrinks[ID].drink();
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
