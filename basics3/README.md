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
```
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
        return ++a ; // Perform the increment operation and return the result.
    }
    function decrement(uint a) public pure returns (uint) {
                return --a ; // Perform the decrement operation and return the result.
    }

}
```
In the last two functions (`increment` and `decrement`) of the above example, it is worth noting that the increment and decrement operators are used as prefix operators, meaning they will first increment the value of `a` by 1 and then return the new value. But if we were to use it as a postfix operator (`return a++;`), it will return the value before the operator is applied. And the user will get the original value instead of the incremented value.

![Calculator](https://user-images.githubusercontent.com/88394912/213490003-cfe132c8-3850-41a8-952a-49fecf4eeaec.PNG)


## Relational
Relational operators are usually used to test or define some kind of relationship between various entities.
For instance a variable `a` has a value of `10` and another value `b` has a value of `20` , the relationship that exists between them is that b is greater than a and a is smaller than b we can define and test this relation using relational operators.

Following are the commonly used relational operators in Solidity:

1. `==` : Equality operator, returns true if the operands are equal.
2. `!=` : Inequality operator, returns true if the operands are not equal.
3. `>`  : Greater than operator, returns true if the left operand is greater than the right operand.
4. `<`  : Less than operator, returns true if the left operand is less than the right operand.
5. `>=` : Greater than or equal to operator, returns true if the left operand is greater than or equal to the right operand.
6. `<=` : Less than or equal to operator, returns true if the left operand is less than or equal to the right operand.
### Hands on Practice 
```
pragma solidity ^0.8.0;

contract RelationalOperators {
    // Declare two state variables 
    uint public a;
    uint public b;

    // A setter function to set the values of `a` and `b`
    function setValues(uint _a, uint _b) public {
        a = _a;
        b = _b;
    }

    //  Function to check equality
    //  `bool` stands for boolean which is either `true` or `false` and if the relationship 
    //  is true then it would return `true` and if not then `false` will be returned 
    
    function isEqual() public view returns (bool) {
        return (a == b);
    }

    // Function to check inequality
    function isNotEqual() public view returns (bool) {
        return (a != b);
    }

    // Function to check if `a` is greater than `b`
    function isGreaterThan() public view returns (bool) {
        return (a > b);
    }

    // Function to check if `a` is less than `b`
    function isLessThan() public view returns (bool) {
        return (a < b);
    }

    // Function to check if `a` is greater than or equal to `b`
    function isGreaterThanEqual() public view returns (bool) {
        return (a >= b);
    }

    // Function to check if `a` is less than or equal to `b`
    function isLessThanEqual() public view returns (bool) {
        return (a <= b);
    }
}

```
![Relationaloperator](https://user-images.githubusercontent.com/88394912/213473034-72a031f4-45c4-4504-8a4d-26e0e9d04c23.PNG)


## Logical

Logical operators are used to evaluate one or more conditions and determine whether they are true or false. These operators are used to control the flow of execution in a program by making decisions based on the results of the evaluation. They allow developers to combine multiple conditions and make logical conclusions about the state of their application.
Now lets say there is a student and his assignment and quizzes marks are some variables (named assignment and quizzes ) and both of their values have to be above 50 for him to be able to sit in the final exam. So the condition for him will be `assignment AND quizzes is greater than 50` and in solidity this condition will be written as `assignment && quizzes > 50 ;`

Following are the commonly used logical operators in Solidity:

1. `&&` : Logical AND operator, returns true if both the operands are true.
2. `||` : Logical OR operator, returns true if any one of the operands is true.
3. `!` : Logical NOT operator, negates the value of the operand.

## Bitwise

Examples : & (Bitwise AND) , | (Bitwise OR) , ^ (Bitwise OR) , ~ (Bitwise Not) , << (Left Shift), >> (Right Shift)

## Assignment

Examples : = , += , -= , *= , /= , %=

## Conditional

Examples : if condition ? A : B
 






