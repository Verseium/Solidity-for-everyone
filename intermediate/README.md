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

<hr/>

Little advanced

```
// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.0;

contract staking{

    mapping(address => uint) public balances;

    uint public totalAmount;
    uint public amountToBeMinted;
    address public owner;

    constructor(uint _amount){
        totalAmount = _amount;
        amountToBeMinted = _amount;
        owner = msg.sender;
    }

    // Modifiers
    modifier onlyOwner(){
        require(msg.sender == owner,"Dont have the access");
        _;
    }

    function mint(address payable _to,uint _mintingAmount)
                public
                onlyOwner{
                  
                    require(_mintingAmount <= totalAmount,"Greater than total amount");
                    require(_mintingAmount <= amountToBeMinted,"Greater than minting limits amount");

                    balances[_to] += _mintingAmount;
                    amountToBeMinted -= _mintingAmount;

                }


}
```
