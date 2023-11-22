// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Pure {

    uint256 firstNumber = 2;
    uint256 secondNumber = 7;

    // To declare functions that don't read from or modify the state of the contract
    // They only perform computations based on their input parameters and return a value
    // Beneficial for gas optimization
    function getTotal() public pure returns(uint256 product, uint256 total) {
        uint256 num1 = 5;
        uint256 num2 = 9;

        product = num1 * num2;
        total = num1 + num2;
        return (product, total);
    }

    function getData() public view returns(uint256 product, uint256 total) {
        uint256 num1 = 5;
        uint256 num2 = 9;

        product = num1 * firstNumber;
        total = num2 + secondNumber;
        return (product, total);
    }
}
