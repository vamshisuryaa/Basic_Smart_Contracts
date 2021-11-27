//SPDX-License-Identifier:GPL-3.0


//We have seen how to declare initialize and change a struct variable 
pragma solidity ^0.8.2;


struct Instructor{
    uint age;
    string name;
    address addr;
}

contract Academy{
    Instructor public academyInstructor;
    
    enum State{Open,Closed,Unknown}
    State public academyState = State.Open;
    
    constructor(uint _age, string memory _name){
     academyInstructor.age = _age;
     academyInstructor.name = _name;
     academyInstructor.addr = msg.sender;
    }
    
    
    function changeInstructor(uint _age, string memory _name,address  _addr) public{
      
      if(academyState==State.Open){
         
         //Creating a temporary memory struct 
             Instructor memory NewInstructor = Instructor({
           
           age : _age,
           name:_name,
           addr:_addr });
       
       
            academyInstructor = NewInstructor;
       
        }
    }
    
}

contract School{
    Instructor public schoolInstrutor;
    
    
}


