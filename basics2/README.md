# Conditionals, Scope, Visibility and state mutability

<hr/>

## Conditions

Conditions are used for checking the access rights

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;  

contract decisionMakingExample{

    // if the user has the right pwd then the user should have the access
    // else the user should be restricted

    address public owner;
    address public owner1;

    constructor(){

        owner = msg.sender;
        owner = msg.sender;

    }

    function callFunc()
            view
            public
            returns(string memory){

                if(msg.sender == owner){
                    return "Owner has the access";
                }
                else if(msg.sender == owner1){
                    return "Owner 2 does have access";
                }
                else{
                    return "Owner doesnt have access";
                }

            }


}
```

<hr/>

## Scope




<hr/>

## Visibility


<hr/>


## State Mutability 

