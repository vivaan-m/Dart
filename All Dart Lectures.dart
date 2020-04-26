/*
void main() {

  Map<String, int> countryDialingCode = {         // Method 1: Using Literal
    "USA": 1,
    "INDIA": 91,
    "PAKISTAN": 92
  };
  Map<String, String> fruits = Map();             // Method 2: Using Constructor
  fruits["apple"] = "red";
  fruits["banana"] = "yellow";
  fruits["guava"]  = "green";
  fruits.containsKey("apple");                        // returns true if the KEY is present in Map
  fruits.update("apple", (value) => "green");         // Update the VALUE for the given KEY
  fruits.remove("apple");                             // removes KEY and it's VALUE and returns the VALUE
  fruits.isEmpty;                                     // returns true if the Map is empty
  fruits.length;                                      // returns number of elements in Map
//	fruits.clear();                                     // Deletes all elements
  print(fruits["apple"]);
  print("\n");
  for (String key in fruits.keys) {           // Print all keys
    print;
  }
  print("\n");
  for (String value in fruits.values) {           // Print all values
    print(value);
  }
  print("\n");
  fruits.forEach((key, value) => print("key: $key and value: $value"));   // Using Lambda
}
 */ //34_maps_and_hashmap.dart(help)
/*
void main() {
  Set<String> countries = Set.from(["USA", "INDIA", "CHINA"]);     // Method 1: From a list
  countries.add("Nepal");
  countries.add("Japan");
  Set<int> numbersSet = Set();                                   // Method 2: Using Constructor
  numbersSet.add(73);     // Insert Operation
  numbersSet.add(64);
  numbersSet.add(21);
  numbersSet.add(12);
  numbersSet.add(73);     // Duplicate entries are ignored
  numbersSet.add(73);     // Ignored
  numbersSet.contains(73);        // returns true if the element is found in set
  numbersSet.remove(64);          // returns true if the element was found and deleted
  numbersSet.isEmpty;             // returns true if the Set is empty
  numbersSet.length;              // returns number of elements in Set
  print("\n");
  for (int element in numbersSet) {                  // Using Individual Element ( Objects )
    print(element);
  }
  print("\n");
  numbersSet.forEach((element) => print(element));   // Using Lambda
}
 */ //33_set_and_hashset.dart
/*
void main() {
  List<String> countries = ["USA", "INDIA", "CHINA"];
  countries.add("Nepal");
  countries.add("Japan");
  List<int> numbersList = List();
  numbersList.add(73);
  numbersList.add(64);
  numbersList.add(21);
  numbersList.add(12);
  numbersList[0] = 99;
  numbersList[1] = null;
  print(numbersList[0]);
  numbersList.remove(99);
  numbersList.add(24);
  numbersList.removeAt(3);
  print("\n");
  for (int element in numbersList) {
    print(element);
  }
  print("\n");
  numbersList.forEach((element) => print(element));
  print("\n");
  for (int i = 0; i < numbersList.length; i++) {
    print(numbersList[i]);
  }
}
 */ //32_list_growable.dart
/*
void main() {
  List<int> numbersList = List(5);
  numbersList[0] = 73;
  numbersList[1] = 64;
  numbersList[3] = 21;
  numbersList[4] = 12;
  numbersList[0] = 99;
  numbersList[1] = null;
  print(numbersList[0]);
  print("\n");
  for (int element in numbersList) {
    print(element);
  }
  print("\n");
  numbersList.forEach((element) => print(element));           // Using Lambda
  print("\n");
  for (int i = 0; i < numbersList.length; i++) {              // Using Index
    print(numbersList[i]);
  }
}
 */ //31_list_fixed_length.dart(for each and for)
/*
void main(){
  int id = 23;
  Function myid = (){
    id=33;
    print(id);
    return id;
  };
  myid();
  Function myid2 = (){
    int myis2 = 66;
    Function cmyid = (){
      myis2 = 77;
      print(myis2);
    };
    return cmyid;
  };
  var noob = myid2();
  noob();
}
*/ //30_lexical_closures.dart
/*
void main() {
  Function addNumbers = (a, b) => print(a + b);
  someOtherFunction("Hello", addNumbers);
  var myFunc = taskToPerform();
  print(myFunc(10));      // multiplyFour(10)         // number  4       // 10  4       // OUTPUT: 40
}
void someOtherFunction(String message, Function myFunction) {
  print(message);
  myFunction(2, 4);       // addNumbers(2, 4)    // print(a + b);   // print(2 + 4)       // OUTPUT: 6
}
Function taskToPerform() {
  Function multiplyFour = (int number) => number * 4;
  return multiplyFour;
}
 */ //29_higher_order_functions.dart
/*
void main() {
  Function addTwoNumbers = (int a, int b) {
    var sum = a + b;
    print(sum);
  };
  var multiplyByFour = (int number) {
    return number * 4;
  };
  Function addNumbers = (int a, int b) => print(a + b);
  var multiplyFour = (int number) => number * 4;
  addTwoNumbers(2, 5);
  print(multiplyByFour(5));
  addNumbers(3, 7);
  print(multiplyFour(10));
}
void addMyNumbers(int a, int b) {
  var sum = a + b;
  print(sum);
}
 */ //28_lambda_nameless_function.dart
/*
void main() {
  var circle1 = Circle();
  var circle2 = Circle();
  Circle.pi;  // 4 bytes
  Circle.pi;  // No more memory will be allocated .
}
class Circle {
  static const double pi = 3.14;
  static int maxRadius = 5;
  String color;
  static void calculateArea() {
    print("Some code to calculate area of Circle");
  }
  void myNormalFunction() {
    calculateArea();
    this.color = "Red";
    print;
    print(maxRadius);
  }
}
 */ //27_static_method_variable.dart
/*
void main() {
  var tv = Television();
  tv.volumeUp();
  tv.volumeDown();
}
class Remote {
  void volumeUp() {
    print("______Volume Up from Remote_______");
  }
  void volumeDown() {
    print("______Volume Down from Remote_______");
  }
}
class AnotherClass {
  void justAnotherMethod(){
  }
}
class Television implements Remote, AnotherClass {
  void volumeUp() {
    print("______Volume Up in Television_______");
  }
  void volumeDown() {
    print("______Volume Down in Television_______");
  }
  void justAnotherMethod() {
    print("Some code");
  }
}
 */ //26_interface.dart
/*
void main() {
  var rectangle = Rectangle();
  rectangle.draw();
  var circle = Circle();
  circle.draw();
}
abstract class Shape {
  int x;
  int y;
  void draw();
  void myNormalFunction() {
  }
}
class Rectangle extends Shape {
  void draw() {
    print("Drawing Rectangle.....");
  }
}
class Circle extends Shape {
  void draw() {
    print("Drawing Circle.....");
  }
}
 */ //25_abstract_class_method.dart
/*
void main() {
  var dog1 = Dog("Labrador", "Black");
  print("");
  var dog2 = Dog("Pug", "Brown");
  print("");
  var dog3 = Dog.myNamedConstructor("German Shepherd", "Black-Brown");
}
class Animal {
  String color;
  Animal(String color) {
    this.color = color;
    print("Animal class constructor");
  }
  Animal.myAnimalNamedConstrctor(String color) {
    print("Animal class named constructor");
  }
}
class Dog extends Animal {
  String breed;
  Dog(String breed, String color) : super(color) {
    this.breed = breed;
    print("Dog class constructor");
  }
  Dog.myNamedConstructor(String breed, String color) : super.myAnimalNamedConstrctor(color) {
    this.breed = breed;
    print("Dog class Named Constructor");
  }
}
 */ //24_inheritance_with_constructors.dart
/*
void main() {
  var dog = Dog();
  dog.eat();
  print(dog.color);
}
class Animal {
  String color = "brown";
  void eat() {
    print("Animal is eating !");
  }
}
class Dog extends Animal {
  String breed;
  String color = "Black";     // Property Overriding
  void bark() {
    print("Bark !");
  }
  void eat() {
    print("Dog is eating !");
    super.eat();
    print("More food to eat");
  }
}
 */ //23_method_overriding.dart
/*
void main() {
  var dog = Dog();
  dog.breed = "Labrador";
  dog.color = "Black";
  dog.bark();
  dog.eat();
  var cat = Cat();
  cat.color = "White";
  cat.age = 6;
  cat.eat();
  cat.meow();
  var animal = Animal();
  animal.color = "brown";
  animal.eat();
}
class Animal {
  String color;
  void eat() {
    print("Eat !");
  }
}
class Dog extends Animal {      // Dog is Child class or sub class, Animal is super or parent class
  String breed;
  void bark() {
    print("Bark !");
  }
}
class Cat extends Animal {      // Cat is Child class or sub class, Animal is super or parent class
  int age;
  void meow() {
    print("Meow !");
  }
}
 */ //22_inheritance.dart
/*
void main() {
  var student = Student();
  student.name = "Peter";
  print(student.name);
  student.percentage = 438.0;
  print(student.percentage);
}
class Student {
  String name;
  double _percent;
  void set percentage(double marksSecured) => _percent = (marksSecured / 500) * 100;
  double get percentage => _percent;
}
 */ //21_getters_setters.dart
/*
void main(){
  Student s1 = Student(33, "Uvesh");
  print(s1.id);
  s1.sleep();
  s1.study();
  print("I am s1 my name is ${s1.name} and my id is ${s1.id}");
  print(" ");
  Student s2 = Student(54, "viaan");
  print(s2.id);
  s2.sleep();
  s2.study();
  print("I am s2 my name is ${s2.name} and my id is ${s2.id}");
  print(" ");
  Student s3 = Student.Mycc();
  s3.name = "Flutter";
  s3.id = 55;
  print("I am s3 my name is ${s3.name} and my id is ${s3.id}");
  s3.study();
  s3.sleep();
  print(" ");
  Student s4 = Student.myAnotherNamedConstructor(65, "dart");
  print("I am s4 my name is ${s4.name} and my id is ${s4.id}");
  s4.sleep();
  s4.study();
}
class Student {
  int id;
  String name;
Student(this.id, this.name);
  void study() {
    print("${this.name} is now studying");
  }
  void sleep() {
    print("${this.name} is now sleeping");
  }
  Student.Mycc(){
    print("this is my cc");
  }
  Student.myAnotherNamedConstructor(this.id, this.name){
    print("this is myAnotherNamedConstructor");
}
}
 */ //20_constructors.dart
/*
void main(){
  Student s1 = Student();
  s1.name = "Uvesh";
  s1.id = 33;
  print(s1.id);
  s1.sleep();
  s1.study();
  print("I am s1 my name is ${s1.name} and my id is ${s1.id}");
  print(" ");
  Student s2 = Student();
  s2.name = "vivaan";
  s2.id = 54;
  print(s2.id);
  s2.sleep();
  s2.study();
  print("I am s2 my name is ${s2.name} and my id is ${s2.id}");
}
class Student {
  int id;
  String name;

  void study() {
    print("${this.name} is now studying");
  }

  void sleep() {
    print("${this.name} is now sleeping");
  }
}
 */ //19_class_and_objects.dart
/*
void main() {
  print("CASE 1");
  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  } on IntegerDivisionByZeroException {
    print("Cannot divide by Zero");
  }
  print(""); print("CASE 2");
  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  } catch (e) {
    print("The exception thrown is $e");
  }
  print(""); print("CASE 3");
  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  } catch (e, s) {
    print("The exception thrown is $e");
    print("STACK TRACE \n $s");
  }
  print(""); print("CASE 4");
  try {
    int result = 12 ~/ 3;
    print("The result is $result");
  } catch (e) {
    print("The exception thrown is $e");
  } finally {
    print("This is FINALLY Clause and is always executed.");
  }
  print(""); print("CASE 5");
  try {
    depositMoney(-200);
  } catch (e) {
    print(e.errorMessage());
  } finally {
  }
}
class DepositException implements Exception {
  String errorMessage() {
    return "You cannot enter amount less than 0";
  }
}
void depositMoney(int amount) {
  if (amount < 0) {
    throw new DepositException();
  }
}
 */ // 18_exception_handling.dart(Help)
/*
void main() {
  findVolume(10);     // Default value comes into action
  print("");
  findVolume(10, breadth: 5, height: 30);     // Overrides the old value with new one
  print("");
  findVolume(10, height: 30, breadth: 5);     // Making use of Named Parameters with Default values
}
int findVolume(int length, {int breadth = 2, int height = 20}) {
  print("Lenght is $length");
  print("Breadth is $breadth");
  print("Height is $height");
  print("Volume is ${length  breadth  height}");
}
 */ //17_default_parameters.dart
/*
void main() {
  findVolume(10, breadth: 5, height: 20);
  print("");
  findVolume(10, height: 20, breadth: 5);
}
int findVolume(int length, {int breadth, int height}) {
  print("Length is $length");
  print("Breadth is $breadth");
  print("Height is $height");
  print("Volume is ${length  breadth  height}");
}
*/ //16_named_parameters.dart
/*
void main(){
name("flutter", "dart", "jave");
cname("india", "Usa");
}
void name(String name1, String name2, String name3){
print("my name is $name1");
print("my name is $name2");
print("my name is $name3");
}
void cname(String name1, String name2, [String name3]){
  print("my name is $name1");
  print("my name is $name2");
  print("my name is $name3");
}
*/ //15_optional_position1al_params.dart
/*void main(){
  uvesh(3, 4);
  int area = vivaan(2, 8);
  print(area);
}
void uvesh(int l , int b)=>print("the ans is ${2*(l*b)}");
int vivaan(int l , int b) => l*b;
 */ // 14_function_expression.dart (Fat arrow)
/*
void main(){
uvesh(3, 4);
int myarea = vivaan(2, 3);
print(myarea);
}
void uvesh(int l , int b){
  int ans = 2*(l+b);
  print("the ans is $ans");
}
int vivaan(int l , int b){
int area = l*b;
return area;
}
 */ //13_functions.dart
/*
void main() {
 myLoop: for (int i = 1; i <= 3; i++) {
    myInnerLoop: for (int j = 1; j <= 3; j++) {
      if (i == 2 && j == 2) {
        continue myLoop;
      }
      print("$i  $j");
    }
  }
}
 */ //12_continue_keyword.dart
/*
void main(){
  my:for(int i = 1; i <=4;i++){
    myinloop:for(int j = 1; j<=4;j++){
    print("$i $j");
    if(i == 3 && j == 4){
      break my;
    }
    }
  }
}
 */ //11_break_keyword.dart
/*
void main(){
  int i = 1;
  do{
    if(i %2 !=0) {
      print(i);
    }
    i++;
  }while(i <= 10);
}
 */ //10_do_while_loop.dart
/*
void main() {
  var  i = 1;
  while (i <= 10) {
    if (i % 2 == 0) {
      print(i);
    }
    i++;
  }
}
 */ //9_while_loop.dart
/*
void main() {
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
  List contrylist = (["india", "Usa", "Uae"]);
  for(var contrys in contrylist){
    print(contrys);
  }
}
 */ //8_for_loop.dart
/*
void main(){
  String grade = "A";
  switch(grade){
    case "A":
      print("you are op");
      break;
    case "B":
      print("very good");
      break;
    case "C":
      print("good try");
      break;
    case "D":
      print("try hard");
      break;
    case "E":
      print("you are noob");
      break;
    default:
      print("this is what i got $grade");

  }
}
*/ //7_switch_and_case.dart
/*
void main(){
  var a = 5;
  var b = 8;
    int smallnum;
  if(a<b){
    print("$a is smaller");
  }
  else{
    print("$b is smaller");
  }
  smallnum = a<b ? a:b;
  print("$smallnum is smaller");
  a<b ? print("$a is smaller ") : print("$b is smaller ");
  String name = "Uvesh";
  var pri = name ?? "i dont know";
  print(pri);
}
*/ //6_conditional_expressions.dart
/*
void main(){
  var salary = 32000;
  if(salary >= 25000){
    print("you are pro");
  }
  else{
    print("you are a big noob");
  }
  var m = 90;
  if(m>=90 && m <100 ){
    print("pro");
  }
  else if(m>=80 && m<90){
    print("good work");
  }
  else if(m>=70 && m<80){
    print("well tried");
  }
  else if(m>=60 && m<70){
    print("better luck next time");
  }
  else if(m>=50 && m<60){
    print("what are you doing");
  }
  else if(m>=40 && m<50){
    print("just saved");
  }
  else if(m>=0 && m<40){
    print("you are a noob");
  }
  else{
    print("what are you saying");
  }
}
*/ //5_if_else_control_flow.dart
/*
void main(){
  final myname = "Uvesh";
  final mylastname = "Rajwani";
  const PI = 3.14;
  const var gravity = 9.8;
}
class math {
  final sir = "Vivaan";
  static const pi = 4.13;
}
*/ //4constants.dart
/*
void main(){
  var iamcool = true;
  int x = 6;
  "Uvesh";
  33.21;
  String s1 = 'uvesh';
  String s2 = "vivaan";
  String s3 = 'it\'s easy';
  String s4 = "it's is not easy";
  String s5 = "it is not easy to wright long string"
  "so i will not do that";
  String name = "Uvesh";
  print("what is my name $name");
  print("The number of chracters in the String Uvesh is ${name.length}");
  double a = 13.2;
  double b = 16.2;
  print("the sum of $a and $b is ${a+b}");
  print("the area of a rectangle with l $a and w $b is ${a*b}");
  //easy way
  double l = 31.2;
  double w = 61.2;
  var a;
  a = l*w;
  print("the area of a rectangle with l $l and w $w is $a");
}
*/ //3string_and_string_interpolation.dart
/*
void main(){
  //int
  int s = 22;
  var count = 33;
  // double
  double per = 36.3;
  ver persent = 66.5;
  double ex = 1.412e6;
  // String
  String name = "Uvesh";
  var 2name = "vivaan";
  //bool
  bool vivaan = true;
  bool uvesh = false;
   print(s);
   print(per);
   print(uvesh);
}
*/ //2built_in_data_types.dart
/*
void main(){
print("Hello world");
print("i am a drat user");
print(13/2);
print(true);
print("Uvesh")
}
*/ //1_hello_world.dart
