// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract WhileLoop {

    // SYNTAX
    // while(condition) {
    //     statement or block of code to be executed if the condition is true
    // }

    uint256[] data;
    uint8 a = 0;

    function loop() public returns(uint256[] memory) {
        while(a < 5) {
            a++;
            data.push(a);
        }
        return data;
    }
}