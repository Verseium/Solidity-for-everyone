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


