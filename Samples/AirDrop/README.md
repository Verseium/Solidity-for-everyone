# Airdrop example

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;  

contract airdropExample{


    // Variables
    address public contractOwnerAddress;

    constructor(){
        contractOwnerAddress = msg.sender;
    }

    // Functions
    function getBalance()
                view
                public
                returns(uint){

                    return contractOwnerAddress.balance;

                }

    function getContractBalance()  
             view
             public
             returns(uint){

                 return address(this).balance;
             }   


    // airdrop logic
    mapping(address => string) public airDropNFT;  

    function airDrop(address  _checkAccount)
                public{

                    // Check whether the address has some balance
                    if(_checkAccount.balance > 0){
                        airDropNFT[_checkAccount] = " new NFT";
                    }else{
                        airDropNFT[_checkAccount] = " no NFT";
                    }

                }                 


}
```
