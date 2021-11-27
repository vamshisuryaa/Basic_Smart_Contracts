//SPDX-License-Identifer:GPL-3.0

pragma solidity ^0.8.2;


contract A{
    
    int public x = 10;
    int y = 20;    //Internal Varaible
                  //Getter function is not created automatically
                  
    function get_y() public view returns(int){
            return y;
    }       
    
    //Private function can be called by another function in the same contract
    function f1() private view returns(int){
        return x;
    }
    
    function f2() public view returns(int){
       
       int a;
       a =f1();
       
        return a;
    }
    
    function f3() internal view returns(int){
        return x;
    }
    
    function f4() external view returns(int){
        return x;
    }
    
    function f5() public pure returns(int){
        int b;
      //  b = f4();ERROR -> f4() is external
      return b;
    }
}

contract B is A{
    int public xx = f3();
  //  int public yy=f1(); ERROR ->f1() is private cand cannot be called from derived contracts
}


contract C{
    //getting an instance of contract A
    A public contract_a = new A(); //-> Contract C deploys contract A
    int public xx = contract_a.f4();
    
    //int public y = contract_a.f1(); ERROR
    //int public yy = contract_a.f3(); ERROR
}