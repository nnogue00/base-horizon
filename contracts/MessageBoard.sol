// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
Base Horizon - Week 2

Message storage and update
*/


contract MessageBoard {

    string public message = "Welcome to Base Horizon!";

    function setMessage(string memory _message) public {
        message = _message;
    }
}
