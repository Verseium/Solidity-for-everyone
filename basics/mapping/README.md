# Mapping

## What is mapping?

Mapping is like a hash table or dictionary when compared with any other language. It is used to store the data in key value pair format.

## Syntax

mapping(key => value) <access specifier> <name>;

## Example

 mapping (student => marks) result;

 This mapping can be used to store student's marks by student's name.



## Example Code

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage {

    mapping(string => uint256) public nameToFavoriteNumber;


    function addPerson(string memory _name, uint256 _favoriteNumber) public {

        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    function retrievePerson(string memory _name) public view returns (uint256){
        return nameToFavoriteNumber[_name] ;
    }

}





## Explnation of the code

Mapping is defined here ->   mapping(string => uint256) public nameToFavoriteNumber;

The mapping stores string as key and a uint256 as value.

The function addPerson helps to assign a nmber to a person. The function accepts two parameters one is name and the other is the number.

nameToFavoriteNumber[_name] = _favoriteNumber -> This statement helps to save assign a number to a name.

The function retrievePerson when called helps to retrive the number assigned to a person




