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
