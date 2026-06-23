// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
Base Horizon - Week 2

Simple Bank
*/

contract SimpleBank {

    uint256 public balance = 0;

    function deposit(uint256 amount) public {
        balance = balance + amount;
    }

    function withdraw(uint256 amount) public {

        require(balance >= amount, "Insufficient balance");

        balance = balance - amount;
    }
}
