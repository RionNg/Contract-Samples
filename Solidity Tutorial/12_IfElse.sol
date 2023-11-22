// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract IfElse {

    uint256 public myUint256 = 5;
    string public myString;

    // Update state variables using "if...else" statement
    function get(
        uint256 _myUint256
    )
        public returns
    (
        string memory
    )
    {
        if(_myUint256 == 5) {
            myString = "The value of myUint256 is correct";
        } else {
            myString = "Incorrect myUint256";
        }
        return myString;
    }

    function shortHand(
        uint256 _number
    )
        public returns
    (
        string memory
    )
    {
        return _number == 5
        ? myString = "The value is correct"
        : myString = "Incorrect value";
    }
}