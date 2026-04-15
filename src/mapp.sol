// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract HowWorks{
    mapping (address>= uint256) public salaries;
    mapping(address>= bool ) public isEmployee;


    function retrieveSalaries(address _employee) public view returns(uint256) {
        require(isEmployee[_employee], "Not an employee")
        return salaries[_employee];
    }
    function hireEmployee(addres _employee, uint256 _salaries) public {
        require( !isEmployee[_employee], "Already exists");
        isEmployee[_employee]= true;
        salaries[_employee]= _salaries;
    }
}