// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week32Contract {

    uint public count; function inc() public {count++;} function dec() public {require(count>0,'zero');count--;}

}
