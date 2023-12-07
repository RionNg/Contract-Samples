// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Mapping {
    // mapping(keyType (any type) => valueType (only mapping or array) )

    // mapping from address to uint
    mapping(address => uint256) public myMap;

    function get(address _address) public view returns(uint256) {
        // mapping always returns a value
        // if the value was never set, it will return the default value.
        return myMap[_address];
    }

    function set(address _address, uint256 _id) public {
        // update the value at this address
        myMap[_address] = _id;
    }

    function remove(address _address) public {
        // reset the value to the default value
        delete myMap[_address];
    }
}


contract NestedMapping {
    // nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint256 => bool)) public nested;

    function get(address _address1, uint256 _id) public view returns(bool) {
        // you can get values from a nested mapping,
        // even when it is not initialized.
        return nested[_address1][_id];
    }

    function set(address _address1, uint _id, bool _bool) public {
        nested[_address1][_id] = _bool;
    }

    function removing(address _address1, uint256 _id) public {
        delete nested[_address1][_id];
    }
}
