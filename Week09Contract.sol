// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week9Contract {

    string[] public tasks;

    function addTask(string memory _task) public {
        tasks.push(_task);
    }

    function updateTask(uint index, string memory newTask) public {
        require(index < tasks.length, "Invalid index");
        tasks[index] = newTask;
    }

    function totalTasks() public view returns(uint){
        return tasks.length;
    }
}
