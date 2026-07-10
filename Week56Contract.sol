// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week56Contract {

    string[] public items; function addItem(string memory i) public {items.push(i);} function total() public view returns(uint){return items.length;}

}
