// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
Base Horizon - Week 2

Basic counter
*/


contract Counter {

    uint256 public count = 0;

    function increment() public {
        count = count + 1;
    }
}
