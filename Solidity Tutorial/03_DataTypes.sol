// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract DataTypes {
    // @ @ @  Boolean  @ @ @
    bool public defaultBool; // bool default always = false
    bool public hey = true;

    // uint & int
    // uint8 = 2 ** 8 -1 == 255
    uint8 public defaultUint8; // default always = 0
    uint8 public myUint8 = 1; // 0 to 255

    // int256 ranges from -2 ** 255 to 2 ** 255 -1 == -5.7896045e+76, 5.7896045e+76
    // int8 = (-2 ** 7 == -128) to (2 ** 7 -1 = 127)
    int8 public defaultInt8; // default always = 0
    int8 public number = -1; // -128 to 127

    // min and max int
    int256 public minInt = type(int).min;
    int256 public maxInt = type(int).max;
    uint256 public minUint = type(uint).min;
    uint256 public maxUint = type(uint).max;

    // @ @ @  Array  @ @ @
    // In solidity, the data types byte represent a sequence of bytes
    // There are two types of bytes
    // --- fixed-sized bytes arrays
    // --- dynamically-sized bytes arrays
    // Whenever you define byte, in smart contract it's represent dynamic bytes array

    bytes1 public a; // 0x00 (default always = 0x00)
    bytes2 public b = 0xb5ca; // 0x0000
    bytes32 public c; // 0x(0*64)

    // @ @ @  Address Types  @ @ @

    address public testAddress;
    address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
}
