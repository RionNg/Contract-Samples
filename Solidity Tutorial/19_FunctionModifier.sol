// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract FunctionModifier {

    // IMPORTANT NOTES
    // -- Modify the behavior of other functions
    // -- Modifier are code that can be run before and after the function call
    // -- Generally use for 3 reasons
    //    -- Restrict access, Validate inputs, Guard against reentrancy hack

    address public owner;
    uint256 public a = 10; 
    bool public locked;

    constructor() {
        owner = msg.sender;
    }

        // Only the owner can call the function
        modifier onlyOwner() {
            require(msg.sender == owner, "Not owner");
            _;
        }

        modifier validateData(address _address) {
            require(_address != address(0), "Invalid address");
            _;
        }

    // Transfer the ownership of the contract
    function changeOwner(address _newOwner) public onlyOwner validateData(_newOwner) {
        owner = _newOwner;
    }

        // Prevent any kind of re-entrancy attack
        modifier noReentrancy() {
            require(!locked, "No reentrancy");
            locked = true;
            _;
            locked = false;
        }

    function decrement(uint256 i) public noReentrancy {
        a -= 1;

        if(i > 1){
            decrement(i - 1);
        }
    }
}