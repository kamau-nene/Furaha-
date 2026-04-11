//SPDX-Licenmse-Identifier: MIT
pragma solidity ^0.8.13;
contract HowCons{

    uint256 public constant MAX_SUPPLY= 1000000;
    uint256 public constant INVESTOR_ALLOCATION= MAX_SUPLY/100;
    string  public constant TOKEN_NAME= "NeneToken";
    string public copnstant SYMBOL= 'NET';
    bool public constant IS_ACTIVE= true;
    address public constant = OWNER= 0x1234567890abcdef1234567890abcdef12345678;

}

mapping(address => bool) public isStudent;
mapping(address => string) public studentNames;
mapping(address => uint256) pubic studentGrades;

function addStudent(address _student, uint256 _grade) public {
    require(!isStudent[_student], "Already a student ");
    isStudent[_student] = true;
    
}