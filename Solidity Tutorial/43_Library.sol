// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

library Math {

    function squareRoot(uint256 y) internal pure returns(uint256 z) {
        if (y > 3) {
            z = y;
            uint256 x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
        // else z = 0 (default value)
    }
}


contract TestMath {

    function testSquareRoot(uint256 x) public pure returns(uint256) {
        return Math.squareRoot(x);
    }
}


// array function to delete element at index and re-organize the array
// so that there are no gaps between the elements.
library Array {

    function remove(uint256[] storage array, uint256 index) public {
        // move the last element into the place to delete
        require(array.length > 0, "Can't remove from empty array");
        array[index] = array[array.length - 1];
        array.pop();
    }
}


contract TestArray {

    using Array for uint256[];

    uint256[] public array;

    function testArrayRemove() public {
        for (uint i = 0; i < 3; i++) {
            array.push(i);
        }
        array.remove(1);

        assert(array.length == 2);
        assert(array[0] == 0);
        assert(array[1] == 2);
    }
}