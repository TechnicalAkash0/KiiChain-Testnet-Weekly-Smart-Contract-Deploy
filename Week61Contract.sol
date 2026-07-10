// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week61Contract {

    mapping(address=>uint) public balances; function deposit(uint a) public {balances[msg.sender]+=a;}

}
