// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.0;

contract staking{

    mapping(address => uint) public balances;

    uint public totalAmount;
    uint public amountToBeMinted;
    address public owner;

    address public stakingContract;

    constructor(uint _amount){
        totalAmount = _amount;
        amountToBeMinted = _amount;
        owner = msg.sender;
    }

    // Modifiers
    modifier onlyOwner(){
        require(msg.sender == owner,"Dont have the access");
        _;
    }

    function mint(address payable _to,uint _mintingAmount)
                external
                onlyOwner{
                  
                    require(_mintingAmount <= totalAmount,"Greater than total amount");
                    require(_mintingAmount <= amountToBeMinted,"Greater than minting limits amount");

                    balances[_to] += _mintingAmount;
                    amountToBeMinted -= _mintingAmount;

                }



   function send(address payable _to,uint _amount)
                external{
                    
                    balances[msg.sender] -= _amount;
                    balances[_to] += _amount; 

                }


    function stakeToken(uint _amount)
                external{
                    
                    balances[msg.sender] -= _amount;
                    balances[stakingContract] += _amount; 

                }



    function setStakingAddress(address _stakingContract)
                external
                onlyOwner{
                    
                    stakingContract = _stakingContract; 

                }



}// 0xDA5e030D89E25110112761b7C044E3ba968A3eFc
