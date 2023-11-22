// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ForLoop {

    // SYNTAX
    // for(initialization; test condition; iteration statement) {
    //     statement or block of code to be executed if the condition is fulfill
    // }

    uint256[] data;

    function loop() public returns(uint256[] memory) {
        for(uint256 i = 0; i < 5; i++) {
            data.push(i);
        }
        return data;
    }

}