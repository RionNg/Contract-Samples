// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ArrayRemoveByShifting {
    // [1, 2, 3] -- remove(1) --> [1, 3, 3] --> [1, 3]
    // [1, 2 ,3 ,4 ,5, 6] -- remove(2) --> [1, 2, 4, 5, 6, 6] --> [1, 2, 4, 5, 6]
    // [1, 2 ,3 ,4 ,5, 6] -- remove(0) --> [2, 3, 4, 5, 6, 6] --> [2, 3, 4, 5, 6]
    // [1] == remove(0) --> [1] --> []

    uint256[] public array;

    function remove(uint256 _index) public {
        require(_index < array.length, "index out of bound");

        for(uint256 i = _index; i < array.length - 1; i++) {
            array[i] = array[i + 1];
        }
        array.pop();
    }

    function test() external {
        array = [1, 2, 3, 4, 5];
        remove(2);
        // [1, 2, 4, 5]
        assert(array[0] == 1);
        assert(array[1] == 2);
        assert(array[2] == 4);
        assert(array[3] == 5);
        assert(array.length == 4);

        array = [1];
        remove(0);
        // []
        assert(array.length == 0);
    }
}