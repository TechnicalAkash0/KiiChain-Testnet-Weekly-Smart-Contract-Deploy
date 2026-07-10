// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Week13Contract {
    struct Employee {
        string name;
        uint256 salary;
        string department;
    }

    mapping(address => Employee) public employees;

    function registerEmployee(
        string memory _name,
        uint256 _salary,
        string memory _department
    ) public {
        employees[msg.sender] = Employee(_name, _salary, _department);
    }

    function getEmployee(address user)
        public
        view
        returns(string memory,uint256,string memory)
    {
        Employee memory emp = employees[user];
        return (emp.name, emp.salary, emp.department);
    }
}
