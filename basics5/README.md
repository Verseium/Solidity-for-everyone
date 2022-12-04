# Bits and Bytes

## Ether units

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;  


// Ether Units

contract etherUnitsExample{

    // 1 ether = 10^9 gwei
    // 1 ether = 10^18 wei
    // wei is the fundamental unit of ether
    // ether is the official currency in Ethereum
    // ether is required for the transactions to go through

    // Assertions to check
    // assertions can only exist inside a function
    function check()
            pure
            public
            {

                assert(1 ether == 1e18); // Here assertion will check whether 1 ether is equal to 10^18

            }
    

}
```

