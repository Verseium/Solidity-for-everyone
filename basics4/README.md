# Loops

We use loops when we want to perform an action repetitively. They make our code more organized and manageable.

Solidity is a language that supports the following loops used while creating smart contracts.

## While loop

## do while loop

## for loop

<hr/>

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;  

contract loopsExample{

    uint public a = 0;
    uint len = 10;

    // While loop
    function whileLoop()
                public
                returns(uint){

                    while(a < len){// While loop

                        a++;

                    }

                    return a;
                }


     // do-while loop
     function doWhileLoop()
                public
                returns(uint){

                    do{
                        a++;
                    }while(a < len);


                    return a;
                }  


     // for loop **
     function forLoop()
                public
                returns(uint){

                    for(uint i = 0; i < len; i++){
                        a++;
                    }

                    return a;

                }                    

}
```
