// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract LocalVariables {

    uint256 public myNumber;

    // Function for local variables
    // Function calls themselves are NOT STORED ON THE BLOCKCHAIN
    // Instead, they will store in the memory
    function local() public returns(address, uint256, uint256) {
        uint256 i = 123;
        myNumber = i;
        i += 5;
        address myAddress = address(1);
        return(myAddress, myNumber, i);
    }
}