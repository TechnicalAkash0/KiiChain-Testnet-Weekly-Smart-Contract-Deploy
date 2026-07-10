// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week26Contract {

    mapping(address=>bool) public whitelist; function join() public {whitelist[msg.sender]=true;}

}
