# Oracles concept with example

Lets create a random number generator

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;  

contract randomGenerator{

    // generate random number
    // use modulus to get the remainder within a range
    // cryptographic hash


    function randGenerator(uint range)
                external
                view
                returns(uint){

                    // grab information from the blockchain randomly to generate random numbers    
                    // abi.encodedPacked concantenates args 
                    // take in three global variables --> block.timestamp,block.difficulty,msg.sender
                    // use abi.encodedPacked to pack all the info
                    // use keccak256 to hash the data
                    // convert the hash into uint type and return it
                    return uint(keccak256(abi.encodePacked(block.timestamp,block.difficulty,msg.sender))) % range;

                }


}
```

Whats the problem here?

People can manipulate the data like block.timestamp, block.difficulty etc

The answer is Oracle dynamic feeds

````
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;  


contract oracle{

    address admin;
    uint public rand;


    constructor(){
        admin = msg.sender;
    }

    function feedRand(uint _random) external{
        require(msg.sender == admin,"Doesnt have access");
        rand = _random;

    }

}

contract oracleExample{

    oracle oracleContract;

    constructor(address _address){
        oracleContract = oracle(_address);
    }

    // generate random number
    // use modulus to get the remainder within a range
    // cryptographic hash


    function randGenerator(uint range)
                external
                view
                returns(uint){

                    // grab information from the blockchain randomly to generate random numbers    
                    // abi.encodedPacked concantenates args 
                    // take in three global variables --> block.timestamp,block.difficulty,msg.sender
                    // use abi.encodedPacked to pack all the info
                    // use keccak256 to hash the data
                    // convert the hash into uint type and return it
                    return uint(keccak256(abi.encodePacked(oracleContract.rand(),block.timestamp,block.difficulty,msg.sender))) % range;

                }


}
```


