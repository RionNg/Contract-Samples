// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Event {
    // updating data into the blockchains using event
    // gas optimization

    // Event declaration
    // up to THREE parameters can be indexed.
    // Indexed parameters helps you filter the logs by the indexed parameter
    event Log(address indexed sender, string message);
    event BlankLog();

    function test() public {
        emit Log(msg.sender, "Hello!");
        emit Log(msg.sender, "Buddy!");
        emit BlankLog();
    }
}
