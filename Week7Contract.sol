// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week7Contract {

    struct Student {
        string name;
        uint256 age;
        string course;
    }

    mapping(address => Student) public students;

    event StudentRegistered(address indexed student, string name);

    function registerStudent(
        string memory _name,
        uint256 _age,
        string memory _course
    ) public {

        students[msg.sender] = Student(_name, _age, _course);

        emit StudentRegistered(msg.sender, _name);
    }

    function getMyDetails()
        public
        view
        returns (
            string memory,
            uint256,
            string memory
        )
    {
        Student memory s = students[msg.sender];
        return (s.name, s.age, s.course);
    }
}
