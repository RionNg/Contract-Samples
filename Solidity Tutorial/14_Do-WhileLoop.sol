// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract DoWhileLoop {

    // SYNTAX
    // do{
    //     block of statement to be executed
    // } while(condition)

    uint256[] data;
    uint8 a = 0;

    function loop() public returns(uint256[] memory) {
        do {
            a++;
            data.push(a);
        } while(a < 5);
        return data;
    }
}
