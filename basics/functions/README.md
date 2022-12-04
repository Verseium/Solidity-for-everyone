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

Resources : 

1. https://medium.com/upstate-interactive/the-truth-about-fallback-functions-in-solidity-a2c604f8e66b

A contract can have exactly one fallback function. A fallback function is an unnamed external function without any input or output parameters. EVM executes the fallback function on a contract if none of the other functions match the intended function calls.

The solidity fallback function is executed if none of the other functions match the function identifier or no data was provided with the function call. Only one unnamed function can be assigned to a contract and it is executed whenever the contract receives plain Ether without any data. To receive Ether and add it to the total balance of the contract, the fallback function must be marked payable. If no such function exists, the contract cannot receive Ether through regular transactions and will throw an exception.

Properties of a fallback function:

1. Has no name or arguments.
2. If it is not marked payable, the contract will throw an exception if it receives plain ether without data.
3. Can not return anything.
4. Can be defined once per contract.
5. It is also executed if the caller meant to call a function that is not available
6. It is mandatory to mark it external.
7. It is limited to 2300 gas when called by another function. It is so for as to make this function call as cheap as possible.

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;  

contract fallbackExample{

    // Events
    event Log(uint gas);

    // send,transfer method: 2300 gas will be returned
    // call method: all gas will be returned
        
    // Fallback
    fallback() external payable{

        emit Log(gasleft());

    }

    // Function
    function getBalance()
                public
                view
                returns(uint){
                    return address(this).balance;
                }



}// address: 0x11bcD925D9c852a3eb40852A1C75E194e502D2b9 

// Another contract to send the balance
contract senderContract{

    // transfer or send methods
    function transferToFallBack(address payable _to)
                public
                payable{

                    // send ethert to the contract
                    _to.transfer(msg.value);// ** Include some value in the value field to send the amount

                }


    // call methods
    function callToFallBack(address payable _to)
                public
                payable{

                    // send ethert to the contract
                    (bool sent,) = _to.call{value:msg.value}(''); // ** Include some value in the value field to send the amount
                    require(sent,"Failed to send");

                }




}
```

