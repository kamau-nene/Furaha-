// spdx-License-Identifier:mit
pragma solidity ^0.8.13;
contract WhatIRemember{
    mapping (address => uint256) public balances; // This mapping keeps track of the balance of the user thius is possible by mapping the
    // address which is the key type to the uint256 which is the value type so all we need to do is search for the users address and it will display the amount.abi

    modifier onlyOwner() {
        if (msg.sender != owner) {
            revert "not owner";
            _;
        }
    }
    modifier onlyOwner(){
        require(msg.sender == owner, "not owner");
        _;
    }
    // so the above modifiers actually do the same thing its just that one uses revert which is for complex structures
    // while the other uses require which is for simple conditions
string public immutable owner;
string public immutable deployedAt
// So the above immutables are just like normal variables the only difference is that they will be set during deployment at the constuctor and will not be changed that 
//  is same as saying yeah ei have this variables which are immutable but i do not know their value yet but will know right after deployment

uint256 public constant MAX_SUPPLY= 100000000000;
string public constant ROLE= "admin";
//  The above are constants meaning they will not change thus the name constant, even after deployment they are just like immutables the only difference is that they are we know their value before deployment

    constructor (){
        msg.sender = owner;
        deployedAt = timestamp.block;
    }  
    // so the above constructor will be set once when the contract will be deployed and those values will be
    //  input during deployment and will be saved at the blockchain storage and will be immutable so they cannot be changed after deployment

    event requiredAmount (address indexed msg.sender, uint256 indexed _amount, uint256 indexed _balance);
    emit requiredAmount (msg.sender, _amount, _balance);
    // The above is an event which states how the announcement will look like when the blockchain state is updated
    // The emit is used to make the announcement that is deffined by the event

    // Types of memory in the chain: Storage- main storage of the blockchain where the state variable live 2. Memory- Read and write access only
    // memory but is mainly used in functions and input paramters 3. Calldata- Read only access mostrly used for extenal functions and input parameters 
    // 4. Stack- This is where the local variables are stored and it is very limited in size

    // Parent contract is the the contract that the child contract inherits using the keyword "is" so we use virtual in the parent contact to state that yes this contract can be inherited
    // and we use override in the child contract to  state that the yes this function is overiding the parent contract meaning it can change the logic of the parent contract function
    // super. is when we intend to use the function in the parent contract as it is withhout changing it logic in the child contract
    // Abstarct contract is a contract that has clearly defined functions but deliberately left without implementation so that the contract inheriting can fill in the logic of the function as per their needs and this is done by using the keyword "abstract" before the contract and then we can use the keyword "virtual" to state that this function can be implemented by the child contract and then we can use the keyword "override" in the child contract to implement the logic of the function as per our needs
    // Interface is a contract with clearly defined functions but whatever happens internally to the function is not defined and this is done by using the keyword "interface" before the contract and then we can use the keyword "virtual" to state that this function can be implemented by the child contract and then we can use the keyword "override" in the child contract to implement the logic of the function as per our needs

    error InsufficientBalance (uint256 required, uint256 available);
    error ZeroAddress();
    //  The above are custom errors which are used to define custom error messages that can
    //  be used in the require or revert statements to provide more specific error messages to  the users when a certain condition is not met. 
    //  This is more efficient than using string messages in require or revert statements as it saves gas and provides more clarity on the error that occurred.
}