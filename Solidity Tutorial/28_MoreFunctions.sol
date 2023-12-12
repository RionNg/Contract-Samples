// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MoreFunctions {
    // Functions can return multiple values.
    function returnMany()
        public
        pure
        returns (
            uint256,
            bool,
            uint256
        )
    {
        return (1, true, 2);
    }

    // return values can be named.
    function named()
        public
        pure
        returns (
            uint256 x,
            bool b,
            uint256 y
        )
    {
        return (1, true, 2);
    }

    // return values can be assigned to their name.
    // in this case, the return statement can be omitted.
    function assigned()
        public
        pure
        returns (
            uint256 x,
            bool b,
            uint256 y
        )
    {
        x = 1;
        b = true;
        y = 2;
    }

    // use destructuring assignment when
    // calling another function that can returns multiple values.
    function destructuringAssignments()
        public
        pure
        returns (
            uint256,
            bool,
            uint256,
            uint256,
            uint256
        )
    {
        (uint256 i, bool b, uint256 j) = returnMany();

        // values can be left out.
        (uint256 x, , uint256 y) = (4, 5, 6);
        return (i, b, j, x, y);
    }

    // cannot use map for either input or output

    // can use array for input
    function arrayInput(uint[] memory _array) public {}

    // can use array for output
    uint256[] public array;

    function arrayOutput() public view returns(uint256[] memory) {
        return array;
    }
}

// Call function with key-value inputs
contract XYZ {

    function someFunctionWithManyInputs(
        uint256 x,
        uint256 y,
        uint256 z,
        address a,
        bool b,
        string memory c
    ) public pure returns (uint256) {}

    function callFunction()
        external
        pure
        returns (uint256)
    {
        return someFunctionWithManyInputs (
            1,
            2,
            3,
            address(0),
            true,
            "c"
        );
    }

    function callFunctionWithKeyValue()
        external
        pure
        returns (uint256)
    {
        return
            someFunctionWithManyInputs ({
                a: address(0),
                b: true,
                c: "c",
                x: 1,
                y: 2,
                z: 3
            });
    }
}
