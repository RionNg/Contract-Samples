// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract GlobalVariables {

    address public owner;
    address public Myblockhash;
    address public origin;
    uint256 public difficulty;
    uint256 public gasLimit;
    uint256 public number;
    uint256 public timestamp;
    uint256 public value;
    uint256 public nowOn;
    uint256 public gasprice;
    bytes public callData;
    bytes4 public Firstfour;


    constructor() payable {
        owner = msg.sender;
        Myblockhash = block.coinbase;
        origin = tx.origin;
        difficulty = block.difficulty;
        gasLimit = block.gaslimit;
        number = block.number;
        timestamp = block.timestamp;
        gasprice = tx.gasprice;
        callData = msg.data;
        Firstfour = msg.sig;
        value = msg.value;
    }
}
