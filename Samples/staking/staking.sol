// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;  

interface IStaking{

    function mint(address payable _to,uint _mintingAmount) external;
    function send(address payable _to,uint _amount) external;

}


contract stake{

    fallback() payable external{

    }

    event Log(string message);

    /*address payable public owner;

    constructor(){
        owner = payable(address(this));
    }*/

    address public stakingContract = 0x16cE54aA7574718f90391B0ccD9086347F940F78;

    mapping(address => uint) public tokenHolders;
    

    function stakeIt(uint _amount)
                    public
                    payable{

                        //IStaking(stakingContract).stakeToken(_amount);
                        IStaking(stakingContract).send(address(this),_amount);
                        tokenHolders[msg.sender] += _amount;
                        

                    }

    function unStake(address _to,uint _amount)
                        public
                        {

                            require(tokenHolders[msg.sender] >= _amount,"Balance is too much");
                            IStaking(stakingContract).send(msg.sender,_amount);

                        }                


}
