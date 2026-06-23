// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract UserBank {

    mapping(address => uint256) public balances;

    function deposit(uint256 amount) public {
        balances[msg.sender] += amount;
    }

    function getMyBalance() public view returns (uint256) {
        return balances[msg.sender];
    }
}
