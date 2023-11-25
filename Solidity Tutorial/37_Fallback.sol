// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Fallback {

    event Log(string func, uint256 gas);

    // 'fallback' function must be declared as external.
    fallback() external payable {
        // send / transfer (forward 2300 gas to this fallback function)
        // call (forwards all of the gas)
        emit Log("fallback", gasleft());
    }

    // 'receive' is a variant of fallback that is triggered when msg.data is empty
    receive() external payable {
        emit Log("receive", gasleft());
    }

    // helper function to check the balance of this contract
    function getBalance() public view returns(uint256) {
        return(address(this).balance);
    }
}


contract SendToFallback {

    function transferToFallback(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    function callFallback(address payable _to) public payable {
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}