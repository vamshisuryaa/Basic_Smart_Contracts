// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Property{
    
    int public price;
    int constant price2  = 10;
    string constant public location = "London";
    
     // price = 100; - Not Possible in solidity
    
    function f1() public pure returns (int){
        
        int x=11;
         x = x*2;
         
          string memory s1  = "abc";
          
         return x;
        
    } 
     
   
}

