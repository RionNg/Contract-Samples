// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ABIDecode {

    struct MyStruct {
        string name;
        uint256[2] nums;
    }

    function encode(
        uint256 x,
        address addr,
        uint256[] calldata array,
        MyStruct calldata myStruct
        )
            external 
            pure 
            returns(bytes memory)
    {
        return abi.encode(x, addr, array, myStruct);
    }

    function decode(bytes calldata data)
        external
        pure
        returns (
            uint256 x,
            address addr,
            uint256[] memory array,
            MyStruct memory myStruct
        )
    {
        // (uint x, address addr, uint256[] memory array, MyStruct memory myStruct) = ...
        (x, addr, array, myStruct)
            = abi.decode(data, (uint256, address, uint256[], MyStruct));
    }
}
