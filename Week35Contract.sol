// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week35Contract {

    mapping(address=>uint) public score; function setScore(uint s) public {score[msg.sender]=s;}

}
