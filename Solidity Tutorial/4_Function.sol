// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Function {

    uint256 public info;

    // Get data with the help of function
    function getInfo() public view returns(uint256) {
        return info;
    }

    function updateInfo(uint256 _info) public {
        info = _info;
    }

    function get(uint256 _a, uint256 _b) public returns(uint256) {
        uint256 newNumber = _a + _b;
        info = newNumber;
        return info;
    }
}