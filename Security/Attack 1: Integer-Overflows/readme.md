# Solidity Integer Overflow

In Solidity, an integer overflow occurs when the result of an arithmetic operation is too large to be stored in the assigned data type. Solidity integers have a fixed size and a defined range of values that they can represent. 

For example, the `uint8` data type can store values between 0 and 255, but any value larger than 255 will result in an overflow. When an overflow occurs, the result wraps around and becomes a value within the defined range. 

This can lead to unintended consequences and security vulnerabilities in smart contracts. For example, a contract that calculates the balance of an account might overflow and report a balance that is much smaller than the actual value. 

To avoid overflows and ensure the security of your smart contracts, it's important to use the appropriate data type and perform overflow checks in your code.

In Solidity, integer overflow can affect different data types, including `uint8`, `uint256`.

`uint8`: This is the smallest integer data type in Solidity and can store values between 0 and 255. If an overflow occurs with a `uint8` variable, the result will wrap around to a value within the defined range, potentially leading to unintended consequences. For example: `250 + 10` with a `uint8` data type would result in `4`, not `260`.

`uint256`: `uint256` is the largest integer data type in Solidity and can store values between 0 and 2^256-1. Despite its large range, `uint256` is still susceptible to overflow if the result of an arithmetic operation is
# Hands on Practice
## Integer Overflow Contract
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
    
    // Function that performs an integer overflow attack by adding 255 and 10
    function attack() public {
        mathContract.add(255, 10); // Overflow occurs here
    }
    
    // Function that retrieves the current result of the Math contract
    function getResult() public view returns (uint8) {
        return mathContract.result();
    }
} 

```
<figure>
  <img src="https://user-images.githubusercontent.com/88394912/219148723-e5fffd64-e3e0-48cf-9fff-7e6d1787214b.PNG"
 alt="Integer Overflow Contract">
  <figcaption>Adding 255 and 12 in the contract resulting in an Integer Overflow Contract</figcaption>
</figure>


### A tip if the code isnt working - set the compiler to version 0.7.0 or below to make this work.
![OBERFLOW](https://user-images.githubusercontent.com/88394912/219149523-ca2afdcf-9109-4ac0-a15c-7b3c18afa949.PNG)
## Explaination of the code:
The Integer Overflow Contract code that I've written demonstrates an integer overflow vulnerability in the `add` function, which can cause the result to be incorrect and unexpected. The `add` function takes two `uint8` parameters `a` and `b`, adds them together, and stores the result in the `result` variable.

In the `add` function, the value of `a` is set to the maximum value of a `uint8` (255), and then `a` is added to `b`. When `a` is already at its maximum value and is added to any other value, it causes an integer overflow, which means the result wraps around to 0 and starts counting up again. In this case, the result is truncated to an 8-bit integer (the size of `result`), and the most significant bits are lost.

For example, if `a` is set to 255 and `b` is set to 12, the result of `a + b` is 267. However, since `result` is only a `uint8`, it can only hold a value up to 255. When `result` is assigned the value of `a + b`, the most significant bits of the result are truncated, and only the least significant 8 bits are retained. In this case, the value of `result` will be 11 instead of 267. 

Here's a more detailed description of what happens in the `add` function when i added 255 and 12 together:
```
a = 255 (0b11111111)
b = 12  (0b00001100)
result = a + b
       = 267 (0b100001011)
       = 11  (0b00001011)  // Truncated to 8 bits

```
# How to Prevent Overflows?

Following are 10 most common and efficient ways to prevent an interger overflow attack:
1. ` 0.8.0 version of Solidity `: This method is by far the best possible solution to prevent integer overflows. Using this method a developer can make use of the strict-math safety features available in the 0.8.0 version of Solidity.The 0.8.0 library for Solidity provides an effective way to prevent integer overflows. It contains functions that can be used to check for overflow and underflow conditions when implementing arithmetic operations. It also provides the explicit modulo operator to handle division operations and the SafeMath library for all arithmetic operations. Furthermore, it has strict-math safety features which can be used to increase the size of variables if necessary and avoid using large numbers in calculations. All these features help to identify and prevent any potential overflows and ensure secure and reliable smart contract operations.

2. ` Use BigNumber library `: BigNumber library is a library that helps to handle large numbers in Solidity. It is a library written in solidity that provides basic arithmetic operations on large numbers and also provides a way to detect and prevent integer overflow. The following code snippet shows how to use BigNumber library to prevent integer overflow.

```
import "github.com/OpenZeppelin/openzeppelin-solidity/contracts/math/SafeMath.sol";
contract MyContract {
  using SafeMath for uint256;
  uint256 a = 100;
  uint256 b = 200;
  
  // Use SafeMath library to prevent integer overflow
  uint256 c = a.add(b);
}
```

3. ` Use the SafeMath library `: The OpenZeppelin SafeMath library provides arithmetic operations that throw exceptions when integer overflows occur. The following code snippet shows how to use the SafeMath library to prevent integer overflow.

```
import "github.com/OpenZeppelin/openzeppelin-solidity/contracts/math/SafeMath.sol";
contract MyContract {
  using SafeMath for uint256;
  uint256 a = 100;
  uint256 b = 200;
  
  // Use SafeMath library to prevent integer overflow
  uint256 c = a.add(b);
}
```

4. ` Use the assert() function `: The assert() function can be used to check whether an expression evaluates to true or false. If the expression evaluates to false, the transaction is reverted. The following code snippet shows how to use the assert() function to prevent integer overflow.

```
contract MyContract {
  uint256 a = 100;
  uint256 b = 200;
  
  // Use assert() function to prevent integer overflow
  function add(uint256 a, uint256 b) public returns (uint256) {
    uint256 c = a + b;
    assert(c > a);
    return c;
  }
}
```

5. ` Use the require() function `: The require() function can be used to check whether an expression evaluates to true or false. If the expression evaluates to false, the transaction is reverted. The following code snippet shows how to use the require() function to prevent integer overflow.

```
contract MyContract {
  uint256 a = 100;
  uint256 b = 200;
  
  // Use require() function to prevent integer overflow
  function add(uint256 a, uint256 b) public returns (uint256) {
    uint256 c = a + b;
    require(c > a);
    return c;
  }
}
```

6. ` Use the max() function `: The max() function is used to return the maximum of two numbers. The following code snippet shows how to use the max() function to prevent integer overflow.

```
contract MyContract {
  uint256 a = 100;
  uint256 b = 200;
  
  // Use max() function to prevent integer overflow
  function add(uint256 a, uint256 b) public returns (uint256) {
    uint256 c = max(a, b);
    return c;
  }
}
```

7. ` Use the min() function` : The min() function is used to return the minimum of two numbers. The following code snippet shows how to use the min() function to prevent integer overflow.

```
contract MyContract {
  uint256 a = 100;
  uint256 b = 200;
  
  // Use min() function to prevent integer overflow
  function add(uint256 a, uint256 b) public returns (uint256) {
    uint256 c = min(a, b);
    return c;
  }
}
```

8. ` Use the SafeSend library `: The SafeSend library provides a set of functions that can be used to safely send ether without the risk of integer overflows. The following code snippet shows how to use the SafeSend library to prevent integer overflow.

```
import "github.com/OpenZeppelin/openzeppelin-solidity/contracts/send/SafeSend.sol";
contract MyContract {
  using SafeSend for *;
  address to = 0x123;
  uint256 amount = 100;
  
  // Use SafeSend library to prevent integer overflow
  function sendEther() public {
    SafeSend(to, amount);
  }
}
```

9. ` Use the SafeMath library `: The SafeMath library provides a set of functions that can be used to safely perform arithmetic operations without the risk of integer overflows. The following code snippet shows how to use the SafeMath library to prevent integer overflow.

```
import "github.com/OpenZeppelin/openzeppelin-solidity/contracts/math/SafeMath.sol";
contract MyContract {
  using SafeMath for uint256;
  uint256 a = 100;
  uint256 b = 200;
  
  // Use SafeMath library to prevent integer overflow
  function add(uint256 a, uint256 b) public returns (uint256) {
    uint256 c = a.add(b);
    return c;
  }
}
```

10. ` Validate input values `: Input values should be validated before performing any operations. This helps to ensure that the operations will not cause integer overflow. The following code snippet shows how to validate input values to prevent integer overflow.

```
contract MyContract {
  uint256 a = 100;
  uint256 b = 200;
  
  // Validate input values to prevent integer overflow
  function add(uint256 a, uint256 b) public returns (uint256) {
    require(a <= b, "Input value should not be greater than max value");
    uint256 c = a + b;
    return c;
  }
}
```

