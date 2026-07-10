// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week24Contract {

    mapping(address=>bool) public marked; function mark() public {marked[msg.sender]=true;}

}
