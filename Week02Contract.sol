// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Week2Contract {

    address public owner;
    uint public totalMessages;

    struct Message {
        address user;
        string text;
        uint timestamp;
    }

    Message[] public messages;

    event MessageAdded(address indexed user, string text, uint timestamp);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function addMessage(string memory _text) public {
        messages.push(Message(msg.sender, _text, block.timestamp));
        totalMessages++;

        emit MessageAdded(msg.sender, _text, block.timestamp);
    }

    function getMessage(uint index) public view returns (address, string memory, uint) {
        Message memory m = messages[index];
        return (m.user, m.text, m.timestamp);
    }

    function getAllMessagesCount() public view returns (uint) {
        return messages.length;
    }

    function deleteLastMessage() public onlyOwner {
        require(messages.length > 0, "No messages");
        messages.pop();
        totalMessages--;
    }
}
