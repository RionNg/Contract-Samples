// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract AssertStatement {

    bool result;

    function checkOverflow(uint256 _number1, uint256 _number2)
        public
    {
        uint256 sum = _number1 + _number2;
        assert(sum <= 255);
        result = true;
    }

    function getResult() public view returns(string memory) {
        if(result == true) {
            return "No overflow";
        } else {
            return "Overflow exist";
        }
    }
}
