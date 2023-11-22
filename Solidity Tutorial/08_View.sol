// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract View {

    uint256 firstNumber = 2;
    uint256 secondNumber = 7;

    // Using View keyword to check the state variables
    // View keyword only use to SEE the data of the state variables
    // You can't use View keyword if you want to do any changes
    function getResults() public view returns(uint256, uint256) {
        return (firstNumber, secondNumber);
    }

    // What if i want to calculate
    // function calculateTotal() 
    //     public view returns
    // (
    //     uint256 product,
    //     uint256 total
    // )
    // {
    //     uint256 numberOne = 20;
    //     uint256 numberTwo = 30;
        
    //     product = numberOne * numberTwo;
    //     total = numberOne + numberTwo;
    // }

    function getTotal()
        public view returns
    (
        uint256 product,
        uint256 total
    )
    {
        product = firstNumber * secondNumber;
        total = firstNumber + secondNumber;
        return (product, total);
    }
}
