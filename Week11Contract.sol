// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week11Contract {

    address public owner;
    string public message;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "Only Owner");
        _;
    }

    function updateMessage(string memory _message) public onlyOwner{
        message = _message;
    }
}
