// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Require {

    // Using "require" statement to check the condition
    function checkInput(
        uint256 _input
    )
        public pure returns(string memory)
    {
        require(_input >= 0, "Invalid uint8");
        require(_input <= 255, "Invalid uint256");
        return "Input is Uint8";
    }

    function Odd(uint256 _input) public pure returns(bool) {
        require(_input % 2 != 0);
        return true;
    }
}
