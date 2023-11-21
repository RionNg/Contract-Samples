// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyContract {

    string public hello;
    uint256 public number;

    // constructor(string memory _hello, uint256 _number) {
    //     hello = _hello;
    //     number = _number;
    // }

    function addInfo(string memory _hello, uint256 _number) public {
        hello = _hello;
        number = _number;
    }

}