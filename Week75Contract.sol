// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week75Contract {

    address public owner; constructor(){owner=msg.sender;} modifier onlyOwner(){require(msg.sender==owner,'owner');_;} function ping() public view onlyOwner returns(bool){return true;}

}
