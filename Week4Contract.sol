// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Week4Contract {

    address public owner;
    uint public totalTasks;

    struct Task {
        string title;
        bool completed;
        address creator;
        uint createdAt;
    }

    Task[] public tasks;

    event TaskCreated(
        string title,
        address indexed creator,
        uint createdAt
    );

    event TaskCompleted(
        uint indexed taskId,
        bool completed
    );

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function createTask(string memory _title) public {

        tasks.push(
            Task(
                _title,
                false,
                msg.sender,
                block.timestamp
            )
        );

        totalTasks++;

        emit TaskCreated(
            _title,
            msg.sender,
            block.timestamp
        );
    }

    function markTaskCompleted(uint _taskId) public {

        require(_taskId < tasks.length, "Invalid task ID");

        tasks[_taskId].completed = true;

        emit TaskCompleted(_taskId, true);
    }

    function getTask(uint index)
        public
        view
        returns (
            string memory,
            bool,
            address,
            uint
        )
    {
        Task memory t = tasks[index];

        return (
            t.title,
            t.completed,
            t.creator,
            t.createdAt
        );
    }

    function getTotalTasks() public view returns (uint) {
        return tasks.length;
    }

    function deleteLastTask() public onlyOwner {

        require(tasks.length > 0, "No tasks");

        tasks.pop();

        totalTasks--;
    }
}
