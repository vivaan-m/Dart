void main() {
  //Object

  Farmer farmer1;
  Farmer farmer2;

//instance

  farmer1 = Farmer("bablu",40);
  farmer2 = Farmer("ramesh",20,);

  //using farmer 1 object to perform actions

//   farmer1.name = "Ramesh";
//   farmer1.age = 20;

  farmer1.harvest();
  farmer1.eat();
  farmer1.sleep();

  //using farmer 2 object to perform actions

//   farmer2.name = "bablu";
//   farmer2.age = 40;

  farmer2.eat();
  farmer2.sleep();

}

//Class

class Farmer {
  String name;
  int age;

//constructors in class
  
//DEFAULT CON.
//-------------------------
//   Farmer() {
//     print("hacked");
//   }
//-------------------------

  
//PARAMITERIZED CON.
//-------------------------
 // Farmer(this.name,this.age);
//-------------------------
  
  
  harvest() {
    print("$name who is $age years old is harvesting");
  }

  sleep() {
    print("$name who is $age years old is sleeping");
  }

  eat() {
    print("$name who is $age years old is eating");
  }
}
