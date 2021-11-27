//SPDX-License-Identifier:GPL-3.0

pragma solidity ^0.8.2;

contract GlobalVariables{
    
    //owner is the address of the account that deploys the smart contract
    address public owner;
    uint public sentValue;
    
    
    constructor (){
        owner = msg.sender;
    }
    
    function changeOwner() public {
        owner=msg.sender;
    }
    
    //When someone wants to send eth to the contract
    function sendEther() public payable{
        sentValue =msg.value;
    }
    
    function getBalance() public view returns(uint){
            return address(this).balance;
    }
    
    
    //This doesnt take into account the constant cost of transaction which is approx 21,000
    function checkGasConsumed() public view returns(uint){
       uint start = gasleft();
       uint j =1;
       for(uint i=1;i<5;i++){
           j+=i;
       }
       
       uint end = gasleft();
        
    return start-end;    
    }
    
    
}

