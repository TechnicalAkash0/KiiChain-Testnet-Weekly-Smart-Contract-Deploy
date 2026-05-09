// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Week3Contract {

    address public owner;
    uint public totalUsers;

    struct UserData {
        string name;
        uint age;
        address wallet;
        uint joinedAt;
    }

    UserData[] public users;

    event UserRegistered(
        address indexed wallet,
        string name,
        uint age,
        uint joinedAt
    );

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function registerUser(string memory _name, uint _age) public {

        users.push(
            UserData(
                _name,
                _age,
                msg.sender,
                block.timestamp
            )
        );

        totalUsers++;

        emit UserRegistered(
            msg.sender,
            _name,
            _age,
            block.timestamp
        );
    }

    function getUser(uint index)
        public
        view
        returns (
            string memory,
            uint,
            address,
            uint
        )
    {
        UserData memory u = users[index];

        return (
            u.name,
            u.age,
            u.wallet,
            u.joinedAt
        );
    }

    function getTotalUsers() public view returns (uint) {
        return users.length;
    }

    function deleteLastUser() public onlyOwner {

        require(users.length > 0, "No users");

        users.pop();

        totalUsers--;
    }
}
