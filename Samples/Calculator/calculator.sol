// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;   

import './interface.sol';

contract Calculator {

    // Available functions from the interface
    /*
    function setAdd(int _a,int _b) external;
    function getAdd() view external returns(int);
    function setSub(int _a,int _b) external;
    function getSub() view external returns(int);        
    function setMul(int _a,int _b) external;
    function getMul() view external returns(int);
    function setDiv(int _a,int _b) external;
    function getDiv() view external returns(int);
    function setPow(int _a,uint _b) external;
    function getPow() view external returns(int); 
    */             
                
    address public contractAddress = 0x7b96aF9Bd211cBf6BA5b0dd53aa61Dc5806b6AcE;

    int public sum;
    // Adding two numbers

    function setValues(int _a,int _b)
                public{
                    ICalculations(contractAddress).setAdd(_a,_b);// Add two numbers using the setAdd method

                    sum =  ICalculations(contractAddress).getAdd();// Store the result in a variable
                }

    // Similarly all other methods can be used            

}

