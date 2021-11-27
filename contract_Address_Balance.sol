//SPDX-License-Identifier:GPL-3.0

pragma solidity ^0.8.2;


contract deposit{
    
    
    address public owner;
    
    constructor(){
        owner = msg.sender;
    }
    
    
     //A contract can have only one receive function 
     receive() external  payable{
    }
    
    fallback() external payable{   
    }
    
    function getBalance() public view returns(uint){
        return address(this).balance;
    }
    
    function sendEther() public payable{
        uint x=100;
        x++;
    }
    
    
    function transferEther(address payable receipent,uint amount) public returns(bool){
        require(owner==msg.sender, "Transfer Failed ,You are not the owne r");
        if(amount<=getBalance()){
            receipent.transfer(amount);
            return true;
        }else{
            return false;
        }
    }
}

