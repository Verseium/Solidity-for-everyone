// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;      

interface ICalculations {

    // All functions should be external
    // No function should have any implementation

    // Functions

    // Adding function
    // setter
    function setAdd(int _a,int _b) external;
    // getter
    function getAdd() view external returns(int);
    // subtracting function
    // setter
    function setSub(int _a,int _b) external;
    // getter
    function getSub() view external returns(int);        
    // multiplying function
    // setter
    function setMul(int _a,int _b) external;
    // getter
    function getMul() view external returns(int);
    // dividing function
    // setter
    function setDiv(int _a,int _b) external;
    // getter
    function getDiv() view external returns(int);
    // powerOf function
    // setter
    function setPow(int _a,uint _b) external;// You cant have the power of in "-" 
    // getter
    function getPow() view external returns(int);              
                


}

