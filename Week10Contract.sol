// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week10Contract {

    mapping(address => uint256) public balances;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) public {

        require(balances[msg.sender] >= amount, "Insufficient Balance");

        balances[msg.sender] -= amount;

        payable(msg.sender).transfer(amount);
    }

    function getBalance() public view returns(uint256){
        return balances[msg.sender];
    }
}
