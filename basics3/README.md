# Operators

An operator is a symbol that tells that compiler to perform certain operations

## Artithmetic 
In Solidity, arithmetic operators are used to perform mathematical operations on numbers. Following are the commonly used arithmetic operators in Solidity:

1. `+` : The addition operator is used to add two or more numbers together.

2. `-` : The subtraction operator is used to subtract one number from another.

3. `*` : The multiplication operator is used to multiply two or more numbers together.

4. `/` : The division operator is used to divide one number by another.

5. `%` : The modulus operator is used to find the remainder of a division operation.

6. `++` : The increment operator is used to increase the value of a variable by 1.

7. `--` : The decrement operator is used to decrease the value of a variable by 1.
### Hands on Practice
Following is a demonstration of how arithmetic operators can be used in a solidity program
pragma solidity ^0.8.0;

// This is an example of a contract called Calculator which demonstrates the basic usage of arithmetic operations

contract Calculator {
    // In this statement a function is declared and it takes the input parameters of `a` and `b`.
    // The same format is used to declare functions throughout this contract
    function add(uint a, uint b) public pure returns (uint) {  
        return a + b;  // Perform the add operation and return the result.
    }

    function subtract(uint a, uint b) public pure returns (uint) {
        return a - b; // Perform the subtract operation and return the result.
    }

    function multiply(uint a, uint b) public pure returns (uint) {
        return a * b;// Perform the multiply operation and return the result.
    }

    function divide(uint a, uint b) public pure returns (uint) {
        return a / b; // Perform the divide operation and return the result.
    }

    function modulo(uint a, uint b) public pure returns (uint) {
        return a % b; // Perform the modulus operation and return the result.
    }
    function increment(uint a) public pure returns (uint) {
        a++;
        return a ; // Perform the increment operation and return the result.
    }
    function decrement(uint a) public pure returns (uint) {
        a--;
        return a ; // Perform the decrement operation and return the result.
    }

}

## Relational

Examples : == , != , > , < , >= , <= 

## Logical

Examples : &&(Logical AND), || (Logical OR), ! (Logical NOT)

## Bitwise

Examples : & (Bitwise AND) , | (Bitwise OR) , ^ (Bitwise OR) , ~ (Bitwise Not) , << (Left Shift), >> (Right Shift)

## Assignment

Examples : = , += , -= , *= , /= , %=

## Conditional

Examples : if condition ? A : B







