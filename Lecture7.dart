//Objectives

//Interfaces or impliments

void main(){

  EggStudent ff = EggStudent();
  
 ff.writing();
  
  
}


class Student{
 
 void writing(){
    print("student is writing");
  }
  
}


class FlutterStudent implements Student{
  @override
  void writing() {
    // TODO: implement writing
  }
  
}


class EggStudent implements Student{
 void writing(){
    print("Engg. is writing");
  }
}
