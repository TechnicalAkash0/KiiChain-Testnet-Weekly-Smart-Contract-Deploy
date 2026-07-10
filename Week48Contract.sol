// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week48Contract {

    uint public total; function donate() public payable {total+=msg.value;}

}
