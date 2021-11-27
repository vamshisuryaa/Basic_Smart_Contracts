//SPDX-License-Identifier:GPL-3.0


pragma solidity ^0.8.2;


contract Auction{
    
    mapping (address => uint) public bids;
    
    
                    //Payable is a function modifier
    function bid() payable public {
        
        bids[msg.sender] = msg.value ;
    }
}