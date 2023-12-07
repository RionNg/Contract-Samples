// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ArrayReplaceFromEnd {

    uint256[] public array;

    // deleting an element creates a gap in the array.
    // one trick to keep the array compact,
    // is to move the last element into the place to delete.
    function remove(uint256 index) public {
        // move the last element into the place to delete.
        array[index] = array[array.length -1];
        // remove the last element
        array.pop();
    }

    function test() public {
        array = [1, 2, 3, 4];

        remove(1);
        // [1, 4, 3]
        assert(array.length == 3);
        assert(array[0] == 1);
        assert(array[1] == 4);
        assert(array[2] == 3);

        remove(2);
        // [1, 4]
        assert(array.length == 2);
        assert(array[0] == 1);
        assert(array[1] == 4);
    }
}
