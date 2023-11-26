// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract RevertStatement {

    function checkOverflow(uint256 _number1, uint256 _number2)
        public pure returns(string memory)
    {
        uint256 sum = _number1 + _number2;
        if(sum < 0 || sum > 255) {
            revert ("Overflow exist");
        } else {
            return ("No Overflow");
        }
    }
}
