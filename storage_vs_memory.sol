//SPDX-License-Identifier:GPL-3.0



pragma solidity ^0.8.2;


contract A{
    
    string[] public cities =['Prague','Bucharest'];
    
    //Function that tries to modify the dynamic array using a memory variable
    function f_memory() view public {
        
        string[] memory s1 = cities;
        //string s2; -> error, memory or storage must be specified
        s1[0] = 'Berlin';
    }
    
      function f_storage() public {
        
        string[] storage s1= cities; // s1 IS THE REFERENCE TO THE SAME MEMORY LOCATION AS THAT OF cities
                                    // SO CHANGING IT ALSO CHANGES THE STATE VARIABLE
        //string s2; -> error, memory or storage must be specified
        s1[0] = 'Berlin';
    }
    
    
    
    
    
}
