//SPDX-License-Identifier:GPL-3.0


pragma solidity ^0.8.0;

contract FixesSizeArrays{
    bytes1 public b1;
    bytes2 public b2;
    bytes3 public b3;
    //.... upto bytes 32
   uint [3] public numbers= [10,20,30] ;
   
   function setArrayElements(uint index, uint value) public{
       
       numbers[index] = value;
    }
    
    function getArrayLength() public view returns(uint){
            return numbers.length;
    }
    
    function setBytesArray()public{
        b1 = "a";
        b2 = "ab";
       // b3 ="abc";
        b3 = "z";//Padding
        
        //Notes that using indexing we cannt modify single bites in single bytes arrays
        // b3[0] ] "a"; THROWS COMPILATION ERROR
        
        //byte is an alias for bytes1 in earlier code
        
    } 
    /*The characters were encode in UTF - 8 , which is a super set of ASCII and characters
    shown as hexadecimal values */
}
