// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week18Contract {
    mapping(uint => uint) public votes;
    mapping(address => bool) public voted;

    function vote(uint candidate) public {
        require(!voted[msg.sender],"Already Voted");
        voted[msg.sender] = true;
        votes[candidate]++;
    }

    function getVotes(uint candidate) public view returns(uint){
        return votes[candidate];
    }
}
