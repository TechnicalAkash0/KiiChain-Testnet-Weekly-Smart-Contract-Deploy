// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week64Contract {

    mapping(address=>bool) public members; function join() public {members[msg.sender]=true;}

}
