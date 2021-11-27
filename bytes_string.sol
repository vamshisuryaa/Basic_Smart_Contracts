//SPDX-License-Identifier:GPL-3.0

pragma solidity ^0.8.2;

contract BytesandStrings{
    
    bytes public b1='abc';
    string public s1 ='abc';
    
    function addElement() public{
        b1.push('x');
        // s1.push('x'); - Throws an error
    }
    
    function getElement(uint i) public view returns(bytes1){
      return  b1[i];
        //return s1[i]; - Throws an error
    }
    
    function getlength( ) public  view returns(uint){

          return  b1.length;
       //   return s1.length; - throws an error
        
        
    }

}
   