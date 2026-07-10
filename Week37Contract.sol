// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week37Contract {

    uint public stock=100; function remove(uint q) public {require(stock>=q,'low');stock-=q;}

}
