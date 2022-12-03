# Variables

Variables are used to store data in memory units inside computer.

There are two groups of variables

1. Solidity value types

A value type stores its data directly in the memory it owns. Variables of this type are duplicated whenever they appear in functions or assignments. A value type will maintain an independent copy of any duplicated variables. Therefore, a change in the value of a duplicated variable will not affect the original variable.

- Signed integers
- Unsigned integers
- Boolean
- Addresses
- Enums
- Bytes


2. Solidity reference types

- Fixed-size arrays
- Dynamic-size arrays
- Array members
- Byte arrays
- String arrays
- Structs
- Mapping

 
```
// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.0;


contract variables{ // Contract Declaration

    // Contract Body

    // VARIABLES
    // Solidity is typed-language so we have to define the type

    // Syntax
    // dataType visibility variableName;
    // ex: string public name;

    // The above variable is string data type and is public
    string public name;
}
```
> There are three main types of variable categories

```

// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.0;


contract variables{ // Contract Declaration

    // VARIABLES

    // Main types
    // Booleans

    /* Booleans are generally used to check whether something is true or false */

    // Integers

    /* Integers are used to store numbers, bigintegers and other numeric type */


    // Strings
    /* Strings store text type characters */

    
}

```
> Signed Integer
>> A signed integer, declared with the int keyword, is a value data type that can be used to store either positive or negative values in smart contracts.

int is an abbreviation for int256, which has a range of -2 ** 255 to 2 ** 255 - 1. This value type takes up to 32B by default, but we can make it smaller by specifying the number of bits in steps of 8. For example: int8, int16, int32, etc.

```

// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.0;


contract variables{ // Contract Declaration

    // VARIABLES

    // Integers
    int public int256ByDefault = 100;

    
}
```

> Unsigned Integeres (Most important)
>> An unsigned integer, declared with the uint keyword, is a value data type that must be non-negative; that is, its value is greater than or equal to zero.

uint is an abbreviation for uint256. Just like signed integers, this value data type takes up to 32B by default. Again, we can make it smaller by specifying the number of bits in steps of 8. For example: uint8, uint16, uint32, etc.

These integers are restricted to a range based on their size. For example, uint8 has a range of 0 to 2 ** 8 -1, and uint256 has a range of 0 to 2 **256 - 1.

```
// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.0;


contract variables{ // Contract Declaration

    // VARIABLES

    // Integers
    uint public uint256ByDefault = 100;

    
}

```

> Booleans
>> Booleans are used to check a condition and it can have either true or false

```
// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.0;


contract variables{ // Contract Declaration

    // VARIABLES

    // Booleans
    bool public isAvailable = true;// Declaring the variable

    
}
```
> Addresses
>> An address value type is specifically designed to hold up to 20B, or 160 bits, which is the size of an Ethereum address.

Solidity actually offers two address value types: address and address payable. The difference between the two is that address payable can send and transfer Ether.

We can use an address to acquire a balance using the .balance method and to transfer a balance using the .transfer method.

```
// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.0;


contract variables{ // Contract Declaration

    // VARIABLES

    // Address
    address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address payable public myOtherAddress = payable(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);

    
}
```

>> Further explanation from : https://solidity-by-example.org/payable/

```

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Payable {
    // Payable address can receive Ether
    address payable public owner;

    // Payable constructor can receive Ether
    constructor() payable {
        owner = payable(msg.sender);
    }

    // Function to deposit Ether into this contract.
    // Call this function along with some Ether.
    // The balance of this contract will be automatically updated.
    function deposit() public payable {}

    // Call this function along with some Ether.
    // The function will throw an error since this function is not payable.
    function notPayable() public {}

    // Function to withdraw all Ether from this contract.
    function withdraw() public {
        // get the amount of Ether stored in this contract
        uint amount = address(this).balance;

        // send all Ether to owner
        // Owner can receive Ether since the address of owner is payable
        (bool success, ) = owner.call{value: amount}("");
        require(success, "Failed to send Ether");
    }

    // Function to transfer Ether from this contract to address from input
    function transfer(address payable _to, uint _amount) public {
        // Note that "to" is declared as payable
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "Failed to send Ether");
    }
}


```

