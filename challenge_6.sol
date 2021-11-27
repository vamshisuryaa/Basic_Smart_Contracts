//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.5.0 <0.9.0;
 
contract A{
    
    string  public  a = "vamshi";
    string  public b = "Krishna";
    
    
    function concat() public view returns(string memory) {
        string memory temp;
   temp=  string(abi.encodePacked(a,b));
   
   return temp;
    }
} 