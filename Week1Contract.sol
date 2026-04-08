// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Week1Contract {

    string public message;
    address public owner;
    uint public updateCount;

    event MessageUpdated(string newMessage, address updatedBy);

    constructor(string memory _message) {
        message = _message;
        owner = msg.sender;
        updateCount = 0;
    }

    function setMessage(string memory _message) public {
        message = _message;
        updateCount += 1;

        emit MessageUpdated(_message, msg.sender);
    }

    function getDetails() public view returns (string memory, address, uint) {
        return (message, owner, updateCount);
    }
}
