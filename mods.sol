//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract HowMods{
    address public owner;
    uint256 public amount;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    modifier validAmount(uint256 _amount){
        require(_amount >= 0, "Invalid amount");
        _;
    }
} 