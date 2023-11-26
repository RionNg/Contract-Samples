// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract StateVariables {

    string public myString;
    uint256 public myUint256;

    // Updating the state variables with constructor
    constructor(
        string memory _myString,
        uint256 _myUint256
        )
    {
        myString = _myString;
        myUint256 = _myUint256;
    }

    string public defaultString = "Default String";
    uint256 public defaultNumber = 5;

    bytes public defaultBytes = "Default Bytes";

    uint256[5] public newNumber = [1, 2, 3 ,4 ,5];

    // Updating the state variables with function
    function updateInfo(
        string memory _myString,
        uint256 _myUint256
        ) public
    {
        myString = _myString;
        myUint256 = _myUint256;
    }
}
