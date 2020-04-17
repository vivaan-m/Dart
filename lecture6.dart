//Objectives

//inheritence

void main(){
  
  FlutterStudent egg = FlutterStudent(77);
  egg.study();
  egg.Coding();
  egg.buildUI();
  
  //Painting paint = Painting();
  
  
 Rectangle rectangle = Rectangle();
  rectangle.draw();
}



//abstract class


abstract class Painting{
  
  void draw();
  void delete();
  
}


class Rectangle extends Painting{
  
  void draw(){
  print("drawing");  
  }
  
  void delete(){
    print("deleting");
  }
} 







//constructor in inheritence 
class EnggStudent{
  //private var
  int _currentMarks=9;
  int marks =0;
  
  EnggStudent(this.marks){
    print(marks);
  }
  
  Coding(){
    print("Coding");
  } 
}


class FlutterStudent extends EnggStudent{
  
  int marks; 
  
  FlutterStudent(this.marks):super(marks){
    print("i am flutter student");
  }
  
  study(){
    print("flutter studing");
  }

  buildUI(){
    print("building UI");
  }  
  
}
