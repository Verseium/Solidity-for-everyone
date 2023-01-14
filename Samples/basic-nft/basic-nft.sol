// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract nft{

// Variables
uint index = 0;    

// Arrays

mapping(uint => string) public tokens;
mapping(string => bool) public isTokenExists;

mapping(address=>uint[]) public tokenHolders;

// Functions

function minting(string memory _tokenURL)
            public{

                require(isTokenExists[_tokenURL] != true,"Token already exists");
                isTokenExists[_tokenURL] = true;
                tokens[index] = _tokenURL;

            }


function transferToken(address _owner,uint tokenID)
            public{

                tokenHolders[_owner].push(tokenID);

            }            


}
