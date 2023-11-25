// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Array {
    // two types of Array
    // 1. Fixed size array
    // 2. Dynamic size array

    // several ways to initialize an array
    uint256[] public array;
    uint256[] public arrayData = [1, 2, 3];
    // fixed sized array, all elements initialize to 0
    uint256[10] public fixedArray;

    function get(uint256 i) public view returns(uint256) {
        return array[i];
    }

    // Solidity can return the entire array.
    // But this function should be avoided for arrays that can grow indefinitely in length.
    function getArray() public view returns(uint256[] memory) {
        return array;
    }

    function push(uint256 i) public {
        // append to array
        // this will increase the array length by 1
        array.push(i);
    }

    function pop() public {
        // remove the last element from array
        // this will decrease the array length by 1
        array.pop();
    }

    function getLength() public view returns(uint256) {
        return array.length;
    }

    function remove(uint256 index) public {
        // delete does not change the array length,
        // but it resets the value at index to it's default value.
        delete array[index];
    }

    function examples() external pure {
        // create an array in memory, only fixed size can be created
        uint256[] memory a = new uint256[](5);
    }
}