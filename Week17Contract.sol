// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week17Contract {
    mapping(address => bool) public attendance;

    function markAttendance() public {
        attendance[msg.sender] = true;
    }

    function checkAttendance(address user) public view returns(bool){
        return attendance[user];
    }
}
