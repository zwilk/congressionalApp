class Energydrink {

  int howMany = 0;
  String flavorName = " ";
  String brandName = " ";
  int IDNumber = 0;

  Energydrink(String flavor, String brand, int ID){

    flavorName = flavor;
    brandName = brand;
  }

  int drink (){
    howMany = howMany + 1;
    return howMany;
  }

  String getBrand(){
  return brandName;
  }

  String getName(){
  return flavorName;
  }

  int getID(){
    return IDNumber;
  }

  void printDrinkProfile(){
    print("you have drank $howMany cans of $brandName : $flavorName");
    return;
  
  }
  

}  