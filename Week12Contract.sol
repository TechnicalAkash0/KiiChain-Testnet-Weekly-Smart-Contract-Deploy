// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week12Contract {

    address public owner;
    uint256 public totalDonations;

    constructor(){
        owner = msg.sender;
    }

    function donate() public payable{
        totalDonations += msg.value;
    }

    function withdraw() public{

        require(msg.sender == owner, "Not Owner");

        payable(owner).transfer(address(this).balance);
    }
}
