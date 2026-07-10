// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week8Contract {

    uint256 public yesVotes;
    uint256 public noVotes;

    mapping(address => bool) public hasVoted;

    function vote(bool support) public {

        require(!hasVoted[msg.sender], "Already voted");

        hasVoted[msg.sender] = true;

        if (support) {
            yesVotes++;
        } else {
            noVotes++;
        }
    }

    function getResult() public view returns(uint256, uint256){
        return (yesVotes, noVotes);
    }
}
