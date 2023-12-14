// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// NOTE: Deploy this contract first
contract B {
    // NOTE: storage layout must be the same as contract A
    uint256 public number;
    address public sender;
    uint256 public value;

    function setVars(uint _number) public payable {
        number = _number;
        sender = msg.sender;
        value = msg.value;
    }
}

contract A {
    uint256 public number;
    address public sender;
    uint256 public value;

    function setVars(address _contract, uint256 _number) public payable {
        // A's storage is set, B is not modified.
        (bool success, bytes memory data)
            = _contract.delegatecall(
                abi.encodeWithSignature("setVars(uint256)", _number)
            );
    }
}
