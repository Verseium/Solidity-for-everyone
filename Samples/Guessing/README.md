# Guess the random number and get the total balance owned by the contract

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;  

contract guess{

    // Variables
    mapping(address => uint) public deposits;
    

    uint public totalBalalnce;
    uint rand; 

    // events
    event Log(uint _bal);
    event whatHappened(string _msg);

    fallback() payable external{

        emit Log(gasleft());

    }


    

    function randomNumber()
                view
                public
                returns(uint){

                    return uint(keccak256(abi.encodePacked(block.timestamp))) % 100;

                }


    function enterGame(uint _rand)
                public
                payable{

                    //randomNumber();// this generates a random number everytime


                    if(_rand <= 100){

                        if(_rand == 10){
                            (bool sent,) = (msg.sender).call{value:address(this).balance}("");
                            
                            require(sent,"Not able to send");
                            emit whatHappened("Guessedv right");
                        }else{

                            (bool sent,) = address(this).call{value:msg.value}("");
                            require(sent,"Not able to send");
                            emit whatHappened("havent Guessed right");
                        }

                        


                    }else{
                        emit whatHappened("Out of range");
                    }

                }


}
```
