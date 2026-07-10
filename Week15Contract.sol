// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week15Contract {
    mapping(address => string[]) private notes;

    function addNote(string memory note) public {
        notes[msg.sender].push(note);
    }

    function getNote(uint index) public view returns(string memory){
        return notes[msg.sender][index];
    }

    function totalNotes() public view returns(uint){
        return notes[msg.sender].length;
    }
}
