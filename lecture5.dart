//Objectives

//inheritence

void main(){
  
  FlutterStudent egg = FlutterStudent();
  
  egg.name ="vivaan";
  egg.age ="19";
  egg.study();
  egg.Coding();
  egg.buildUI();
  
  
}






class Student{

  String name;
  String age;
  
  study(){
    print("studing");
  }
}


class EnggStudent extends Student {
  
  Coding(){
    print("Coding");
  } 
}


class FlutterStudent extends EnggStudent{

  buildUI(){
    print("building UI");
  }  
  
}
