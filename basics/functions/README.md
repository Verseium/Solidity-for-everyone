# Functions

Functions are simply a collection of set of rules and conditions used as a single codebase.

* Solidity Function Syntax 

Use the following syntax to create your Solidity function, as seen in the example below:

- Define the function with the function keyword
- Create a name for the function, which is unique and does not coincide with any of the reserved keywords
- List any parameters containing the name and data type of the parameter or include no extra parameters
- Create a statement block surrounded by curly brackets

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract functionsExample {

    string public name;

    // FUNCTIONS
    // setter functions
    /* function functionName(args)
                visibility
                stateMutability{
                    Function body
                }*/

    function setValues(string memory _name)
            public{
                name = _name;
            }            


    // getter functions
    /* function functionName(args*) --> args are optional
                visibility
                stateMutability
                returns(dataType of return){
                    Function body;*/
    function getValues()
            view
            public
            returns(string memory){
                return name;
            }  

                


}


```

<hr/>

* Modifiers
