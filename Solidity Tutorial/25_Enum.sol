// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Enum {

    // Enum representing shipping status
    enum Status {
        Pending, // 0
        Shipped, // 1
        Accepted, // 2
        Rejected, // 3
        Cancelled // 4
    }

    // Default value is the first element listed in definition of the type,
    // in this case "Pending".
    Status public status;

    // Returns uint
    // Pending   - 0
    // Shipped   - 1
    // Accepted  - 2
    // Rejected  - 3
    // Cancelled - 4
    function get() public view returns(Status) {
        return status;
    }

    // update status by passing uint into input
    function set(Status _status) public {
        status = _status;
    }

    // you can update to a specific enum like this
    function cancel() public {
        status = Status.Cancelled;
    }

    // delete resets the enum to its first value, 0
    function reset() public {
        delete status;
    }
}
