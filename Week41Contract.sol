// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week41Contract {

    mapping(address=>string) public data; function set(string memory v) public {data[msg.sender]=v;} function get(address a) public view returns(string memory){return data[a];}

}
