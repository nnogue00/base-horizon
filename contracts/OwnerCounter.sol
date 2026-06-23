// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
Base Horizon - Week 2

Owner access control
*/


contract OwnerCounter {

    address public owner;
    uint256 public count = 0;

    constructor() {
        owner = msg.sender;
    }

    function increment() public {
        count = count + 1;
    }

    function reset() public {
        require(msg.sender == owner, "Only owner can reset");

        count = 0;
    }
}
