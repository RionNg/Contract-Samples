// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Constant {
    // constant = permanent variable, not going to change
    
    // address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    // execution cost without "constant" = 70063 gas

    address public constant MY_ADDRESS = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    // execution cost with "constant" = 45697 gas

    function getConstant() public pure returns(address) {
        return MY_ADDRESS;
    }
}
