// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week16Contract {
    address public owner;
    uint256 public totalRaised;

    constructor(){
        owner = msg.sender;
    }

    function donate() public payable {
        totalRaised += msg.value;
    }

    function withdraw() public {
        require(msg.sender == owner,"Only Owner");
        payable(owner).transfer(address(this).balance);
    }
}
