// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week33Contract {

    string[] public notes; function add(string memory n) public {notes.push(n);} function total() public view returns(uint){return notes.length;}

}
