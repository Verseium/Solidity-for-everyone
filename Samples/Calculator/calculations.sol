// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
/*  The gas will be high for the contract
    This is not an optimised contract
    The reason is because it is for learning the concepts not for production
*/        

contract calculations {

    // Variables
    int sum;
    int sub;
    int mul;
    int div;
    int pow;

    // Functions

    // Adding function
    // setter
    function setAdd(int _a,int _b)
            public{

                sum = _a + _b;

            }

    // getter
    function getAdd()
                view
                public
                returns(int){
                    return sum;
                }


    // subtracting function
    // setter
    function setSub(int _a,int _b)
            public{

                sub = _a - _b;

            }

    // getter
    function getSub()
                view
                public
                returns(int){
                    return sub;
                }                    


    // multiplying function
    // setter
    function setMul(int _a,int _b)
            public{

                mul = _a * _b;

            }

    // getter
    function getMul()
                view
                public
                returns(int){
                    return mul;
                }  



    // dividing function
    // setter
    function setDiv(int _a,int _b)
            public{

                div = _a / _b;

            }

    // getter
    function getDiv()
                view
                public
                returns(int){
                    return div;
                }  


    // powerOf function
    // setter
    function setPow(int _a,uint _b)// You cant have the power of in "-"
            public{

                pow = _a ** _b;// _a^_b

            }

    // getter
    function getPow()
                view
                public
                returns(int){
                    return pow;
                }                          
                


}


// Contract address : 0x7b96aF9Bd211cBf6BA5b0dd53aa61Dc5806b6AcE
