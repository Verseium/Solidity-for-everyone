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

Solidity reference types differ from value types in that they do not store values directly on their own. Instead, reference types store (or “reference”) the address of the data’s location and do not directly share the data.

Reference data types must be handled cautiously since they deal with storage locations. Data location affects the amount of gas used in a transaction and therefore can negatively impact smart contract development performance.

When using reference types, reference variables point a user to the location of value storage, and these can take up more than 32B of memory in size.

Two separate variables can refer to the exact location, and any change in one variable can affect the other. Several variables that point to the same address can be used to effect a change in a reference data type.

- Fixed-size arrays
- Dynamic-size arrays
- Array members
- Byte arrays
- String arrays
- Structs
- Mapping

<hr/> 


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

<hr/> 

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

<hr/> 

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

<hr/> 

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

<hr/> 

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

<hr/> 

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

<hr/> 

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

<hr/> 

> Enums (Enumerations)
>> Enums, or enumeration, values in Solidity consist of user-defined data types. This data type is used explicitly for constant values, such as the names of integral constants, making a smart contract easier to read and maintain. Enums can help reduce the incidence of bugs in your code.

Enums limit a variable to a few predefined values and each copy maintains its value.

Options are represented by integer values beginning with zero; you can also specify a default value for the enum.

```

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EnumExample {

    // Declaring enum template
    enum choices{
        available,
        notAvaialble
    }

    // Using the enum template
    choices public presentChoice;
    // This varaible can have either presentChoice.available or presentChoice.notAvailable 
    // By default enums will have the first one as its value
    // Which means by default it is presentChoice.available

}


```

<hr/> 

> Bytes
>> In Solidity, byte refers to 8-bit signed integers. Everything in memory is stored in bits with binary values 0 and 1.
>>
>> More explanation in https://jeancvllr.medium.com/solidity-tutorial-all-about-bytes-9d88fdb22676
>> 
>> As an example, this is how we would store the string “abcd” in one full word (32 bytes): 0x6162636400000000000000000000000000000000000000000000000000000000
>> 
>> This is how the number 0x61626364 would be stored: 0x0000000000000000000000000000000000000000000000000000000061626364

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract bytesExample {

    // Bytes
    // without
    // string public name = "Very Good";// Gas : 230650 gas

    // with
    // bytes public name = "Very Good";// Gas : 230650 gas
    // bytes9 public name = "Very Good lessons";// Gas : 143106 gas
    bytes32 public name = "Very Good lessons";// Gas :131755 gas

}
```
<hr/> 


> Arrays
> 
>> Example : https://solidity-by-example.org/array/ 
>> 
>> Arrays are a group of variables of the same data type, with each variable having a unique index. Array size can be fixed or dynamic. Arrays data structures are dependent on other data types. They keep these data in storage and simplify the process of repetition, storage, and search for variables or a subset of variables within a group.We can retrieve a requested variable by using the unique index location.
>> 
>>> Fixed size array.  : The Fixed-size arrays have a predefined size when they are declared.
>>> 
>>> Dynamic size array : Dynamic arrays do not have a predefined size when they are declared. Instead, their size is determined at run time.


```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract arraysExample {

    // ARRAYS
    // FIXED
    // Syntax
    // dataType[limit] visibility arrayVariableName;
    string[3] public arrayFixed = ["Zero","One","Two"];

    // Dynamic
    // Syntax
    // dataType[limit] visibility arrayVariableName;
    string[] public arrayDynamic;

    // CRUD Operations
    // CREATE/ADD DATA
    function createData(string memory _new)
                public{
                    arrayDynamic.push(_new);
                }

    // READ DATA
    function readData()
                view
                public
                returns(string[] memory){
                    return arrayDynamic;
                }  

    // UPDATE DATA
    function updateData(uint _index, string memory _newest)
                public{
                    arrayDynamic[_index] = _newest;
                }  


    // DELETE DATA
    function deleteData(uint _index)
                public{
                    delete arrayDynamic[_index];
                }                                 


}
```
<hr/> 

> Structs
>> The struct reference type in Solidity refers to a new (or custom) data type. You can use the struct keyword to define a structure, made up of multiple variables, which can be both value type and reference type.
>>
>> In most cases, struct is used to represent a record.
>>
>> It’s important to note that because structs must be finite in size, they cannot contain members of their type. This is not to say that struct cannot contain struct; for example, struct A can contain struct B, but struct A cannot contain struct A. 


```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract structsExample {

    // STRUCTS  

    struct Details{// Template

        uint age;
        string name;

    }   

    // Initializing the struct
    // syntax
    // structTemplateName visibility structVariableName;
    Details public details;


    // Add data
    function addData(uint _age,string memory _name)
                public{

                    details.age  = _age;
                    details.name = _name;

                    // OR

                    // Details memory someVariableName;
                    // someVariableName = Details(_age,_name);

                }                           


}
```


<hr/> 

> Mapping
>> In Solidity, mapping functions similarly to a hashtable or dictionary in other programming languages.
>>
>> Mapping is the most frequently used reference type in Solidity. Mapping types are used to store data in the form of key-value pairs, where the key can be any of the inbuilt data types except for reference types, and the value can be any type.
>>
>> The mapping function can retrieve stored data using the supplied key.
>>
>> Because Solidity mapping only provides an option for one data storage location, this data type is permitted for state elements.
>>
>> The mapping type is declared using the mapping keyword followed by data types for both key and value, separated by the => notation. 

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract mappingsExample {

    // Mappings
    /*

        | Left side data | Right Side Data |
        |----------------|-----------------|
        | address        | NFT link        |


                address => NFT link
                   /            |
                  /             |
                 /              |___________________________
                /                                           |
               /                                           \|/
              /                                     ipfs://qwas......../1
            \|/   
    0x5B38Da6a701c568545dCfcB03FcB875f56beddC4

    
    */

    // Syntax
    // mapping(left => right) visbility variableName;
    mapping(address => string) public mappingVariable;

    // Create Data
    function addData(address  _address,string memory _nftDataLink)
                public{
                    mappingVariable[_address] = _nftDataLink;
                }



}
```


<hr/> 










