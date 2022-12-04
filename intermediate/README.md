# Smart contracts - DeFi

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;  

contract myCoin{

    // Variables
    address public owner;
    mapping(address => uint) public balances;



    // Constructor
    constructor(){
        owner = msg.sender;// Only the creator can create the tokens/coins
        
    }



    // make new coins
    // send it to the address
    function mint(address payable _to,uint amount)
                public{
                        require(msg.sender == owner,"Doesnt have access");
                        //_to.transfer(amount);

                        balances[_to] += amount;

                }



    function send(address payable _to,uint amount)
                public{

                        balances[msg.sender] -= amount;
                        balances[_to] += amount;

                }            




}
```
