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

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;  

contract modifierExample{

    // Variables
    address public owner;


    constructor(){

        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(owner == msg.sender,"The caller doesnt have access");
        _; // The rest of the code will be implemented in actual function 
    }                                                               


    function check()
            view
            public
            onlyOwner // Modifier here
            returns(string memory){
                return "Owner has access";
            }


}
```

<hr/>

* Return multiple datatypes

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;  

contract modifierExample{

    // Variables
    address public owner;


    constructor(){

        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(owner == msg.sender,"The caller doesnt have access");
        _; // The rest of the code will be implemented in actual function 
    }                                                               


    function check()
            view
            public
            onlyOwner // Modifier here
            returns(string memory,string memory,bool){
                return ("Owner has access","Owner do have the access",true);
            }


}
```

<hr/>

* Destructuring

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;  

contract modifierExample{

    // Variables
    address public owner;

    string public msg1;
    string public msg2;
    bool public condition;

    constructor(){

        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(owner == msg.sender,"The caller doesnt have access");
        _; // The rest of the code will be implemented in actual function 
    }                                                               


    function check()
            view
            public
            onlyOwner // Modifier here
            returns(string memory,string memory,bool){
                return ("Owner has access","Owner do have the access",true);
            }


    function destructuring()
            public
            {
                (msg1,msg2,condition) = check();// Check returns three datatypes
                // or
                // (msg1,,) = check(); // Here only msg1 gets the value

            }        


}
```

<hr/>

* Fallback functions


