// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
Base Horizon - Week 2

Counter with:
- increment
- decrement
- reset
- require validation
*/

contract CounterV3 {

    uint256 public count = 0;

    function increment() public {
        count = count + 1;
    }

    function decrement() public {
        require(count > 0, "Count cannot be negative");

        count = count - 1;
    }

    function reset() public {
        count = 0;
    }
}
