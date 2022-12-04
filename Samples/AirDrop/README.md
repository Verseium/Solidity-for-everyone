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

<hr/>

## Time-based airdrop

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;  

// This smart contract when given a specific time will try to airdrop NFTS if that time is beyond the present time

// Time-based drops

contract timedAirDropExample{



    uint public timeNow = block.timestamp;// Result will be in  unix timestamp which is number of seconds from Jan 1st,1970.
    uint public timeForAirDrop;
    address[] public listOfAddress = [0x5B38Da6a701c568545dCfcB03FcB875f56beddC4,0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2];
    mapping(address => string) public nftsForHolder;

    // Native time based units
    // Everything will be converted into seconds 
    // These are only for examples--> nothing do with smart contract logic
    uint public hoursUnit   = 1 hours;
    uint public minutesUnit = 1 minutes;
    uint public weeksUnit   = 1 weeks;


    // Constructor
    constructor(uint _timeStamp){

        timeForAirDrop = _timeStamp;

        airDrop();

    }


    function airDrop()
                public{

                    if(timeForAirDrop < timeNow){ // if condition to check the time is right

                        for(uint8 i=0; i < listOfAddress.length;i++){

                            nftsForHolder[listOfAddress[i]] = "Super NFT";

                        }

                    }

                    
                    
                }

    

}
```
