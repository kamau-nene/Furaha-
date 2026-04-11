// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract everDay{
    uint256 public immutable owner;
    uint256 public immutable startTime;
    string public immutable message;
    address public immutable creator;


    constructor() {
        owner= msg.sender;
        startTime= block.timestamp;
        address _creator= msg.sender;
    }
}