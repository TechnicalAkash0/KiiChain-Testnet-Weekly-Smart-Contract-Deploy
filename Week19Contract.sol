// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week19Contract {
    struct Message {
        address sender;
        string text;
    }

    Message[] public messages;

    function postMessage(string memory _text) public {
        messages.push(Message(msg.sender,_text));
    }

    function totalMessages() public view returns(uint){
        return messages.length;
    }
}
