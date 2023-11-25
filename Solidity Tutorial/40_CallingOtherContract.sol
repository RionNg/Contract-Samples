// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Callee {

    uint256 public x;
    uint256 public value;

    function setX(uint256 _x) public returns(uint256) {
        x = _x;
        return x;
    }

    function setXAndSendEther(uint256 _x)
        public 
        payable 
        returns(uint256, uint256)
    {
        x = _x;
        value = msg.value;
        return (x, value);
    }
}


contract Caller {

    function setX(Callee _callee, uint256 _x) public {
        uint256 x = _callee.setX(_x);
    }

    function setXFromAddress(address _address, uint256 _x) public {
        Callee callee = Callee(_address);
        callee.setX(_x);
    }

    function setXAndSendEther(Callee _callee, uint256 _x) public payable {
        (uint256 x, uint256 value) 
            = _callee.setXAndSendEther{value: msg.value}(_x);
    }
}