# work in progress

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DAO{

    // Components
    // Voting

    /* For voting to happen,
        1. we need to take in peoples vote
        2. This people should be part of the DAO
        3. There should be a limit on time

    */
    event Log(bytes mesg,address newJoinee);

    address[] public members;  // This will contain all the memebers in the DAO
    mapping(address => bool) public isMember;  // This will contain the boolean value whether the member exists or not
    string[] public questions;
    mapping(string => mapping(address => bool)) public didVoted;

    modifier onlyMembers(){

        require(isMember[msg.sender] == true);
        _;

    }

    // Function to enter DAO
    function joinDAO() 
                public{
                    members.push(msg.sender);
                    isMember[msg.sender] = true;
                    emit Log("New member joined",msg.sender);
                } 

    // Function for creating voting questions
    function  createVotingQuestion(string memory _question)
                 public
                 onlyMembers{

                     questions.push(_question);

                 }                       

    // Deposits
    // Payments


}
```
