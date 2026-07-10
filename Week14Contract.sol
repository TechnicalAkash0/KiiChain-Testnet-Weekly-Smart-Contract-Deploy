// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week14Contract {
    address[] public players;

    function enter() public {
        players.push(msg.sender);
    }

    function totalPlayers() public view returns(uint256){
        return players.length;
    }

    function getPlayer(uint index) public view returns(address){
        return players[index];
    }
}
