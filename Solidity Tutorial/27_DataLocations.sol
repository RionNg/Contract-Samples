// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract DataLocations {

    uint[] public array;
    mapping(uint256 => address) map;
    struct MyStruct {
        uint256 foo;
    }
    mapping(uint256 => MyStruct) myStructs;

    function f() public {
        // call _f with state variables
        _f(array, map, myStructs[1]);

        // get a struct from a mapping
        MyStruct storage myStruct = myStructs[1];
        // create a struct in memory
        MyStruct memory myMemoryStruct = myStructs[0];
    }

    function _f(
        uint256[] storage _array,
        mapping(uint256 => address) storage _map,
        MyStruct storage _myStruct
    ) internal {
        // do something with storage variables
    }

    // you can return memory variables
    function g(uint[] memory _array) public returns(uint256[] memory) {
        // do something with memory array
    }

    function h(uint256[] calldata _array) external {
        // do something with calldata array
    }
}