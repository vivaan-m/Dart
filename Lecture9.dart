//Lamda or Anonymous
//High-Order Function

void main() {

  
  
  //lamda example: (){}
  //is a function which have no name
  
  Function getMe = ()=>print("i am user");
  
  //High-Order fuction
  //any function which take or return any other fuction is known as
  //high order function
  //example 1: fun. in constructor 
  
  getType(String name,Function newMe,Function vv){
    print(name);
    newMe();
    vv();
  }
 
  getType(
    "vivaan",
    getMe,
    ()=>print("vv")
  );
  
  //example 1: returning a Fuction
  
  numbers(){
      Function getYou = ()=>print("you are a user");
    return getYou();
  }
  
  numbers();
  
}

