// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week99Contract {

    mapping(address=>uint) public score; function update(uint s) public {score[msg.sender]=s;}

}
