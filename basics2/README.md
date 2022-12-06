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

```
contract scope{


    // Varaibles inside this space are called state variables
    // state variables

    uint public a = 10;


    function justChecking()
                pure 
                public
                returns(uint){

                    // local varaible    
                    uint localA = 20;
                    return localA;


                }



         function scoping()
                view 
                public
                returns(uint){

                    return a;// state variable which is of global scope


                }        


}
```



<hr/>

## Visibility


<hr/>


## State Mutability 

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;// it means that the versions after 0.8.0

contract mutabilityExample{


    // Variables --> state variable or global scope variable
    string public teamA = "Spain";
    string public teamB = "England";

    // Function
    // syntax
    /* function functionName(args)
                 visibility --> public
                 mutability --> 
                 returns(data type){
                     steps
                 }*/

    // state mutability --> blank space
    function changeTeamA(string memory _teamA)
                public{
                    teamA = _teamA;// trying to change the data
                }


    // state mutability --> view
    function viewTeamB()
                        public
                        view
                        returns(string memory){

                            //teamB = _teamB;// you are trying to change the data

                           return teamB; // just view the global vraible --> teamB                                

                        }


    // state mutability --> pure
    function viewLocalTeam(string memory _localTeam)
                        public
                        pure
                        returns(string memory){

                           return _localTeam; // just view the local vraible --> _localTeam                              

                        }                                      


}


```

