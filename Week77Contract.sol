// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week77Contract {

    mapping(uint=>string) public records; function save(uint id,string memory d) public {records[id]=d;}

}
