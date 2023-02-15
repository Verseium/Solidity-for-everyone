# Solidity Integer Overflow

In Solidity, an integer overflow occurs when the result of an arithmetic operation is too large to be stored in the assigned data type. Solidity integers have a fixed size and a defined range of values that they can represent. 

For example, the `uint8` data type can store values between 0 and 255, but any value larger than 255 will result in an overflow. When an overflow occurs, the result wraps around and becomes a value within the defined range. 

This can lead to unintended consequences and security vulnerabilities in smart contracts. For example, a contract that calculates the balance of an account might overflow and report a balance that is much smaller than the actual value. 

To avoid overflows and ensure the security of your smart contracts, it's important to use the appropriate data type and perform overflow checks in your code.

In Solidity, integer overflow can affect different data types, including `uint8`, `uint256`.

`uint8`: This is the smallest integer data type in Solidity and can store values between 0 and 255. If an overflow occurs with a `uint8` variable, the result will wrap around to a value within the defined range, potentially leading to unintended consequences. For example: `250 + 10` with a `uint8` data type would result in `4`, not `260`.

`uint256`: `uint256` is the largest integer data type in Solidity and can store values between 0 and 2^256-1. Despite its large range, `uint256` is still susceptible to overflow if the result of an arithmetic operation is

## Vulnerable Fund Transfer Contract
``` 
// The Math contract allows users to perform addition and subtraction on uint8 integers
// The Attacker contract will demonstrate an integer overflow attack on the Math contract
pragma solidity ^0.7.0;

contract Math {
    uint8 public result;

    // Adds two uint8 integers together and sets the result
    function add(uint8 a, uint8 b) public {
        result = a + b;
    }

    // Subtracts one uint8 integer from another and sets the result
    function subtract(uint8 a, uint8 b) public {
        result = a - b;
    }
}

contract Attacker {
    Math public mathContract;
    
    // Constructor function that sets the address of the Math contract to be attacked
    constructor(address mathAddress) {
        mathContract = Math(mathAddress);
    }
    
    // Function that performs an integer overflow attack by adding 255 and 10
    function attack() public {
        mathContract.add(255, 10); // Overflow occurs here
    }
    
    // Function that retrieves the current result of the Math contract
    function getResult() public view returns (uint8) {
        return mathContract.result();
    }
} 

This code block contains the two contracts, Math and Attacker. The Math contract has two functions, add and subtract, which perform addition and subtraction on uint8 integers respectively. The Attacker contract has a constructor function that takes the address of a Math contract instance and saves it as a public variable. The Attacker contract also has two functions, attack and getResult. The attack function performs an integer overflow attack by calling the add function with the values 255 and 10. The getResult function returns the current value of the result variable in the Math contract.



```

