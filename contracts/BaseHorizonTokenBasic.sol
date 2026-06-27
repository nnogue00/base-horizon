// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BaseHorizonTokenBasic {

string public name = "Base Horizon Token";
string public symbol = "BHZN";
uint256 public totalSupply = 1000000;

mapping(address => uint256) public balances;

    constructor(){
        balances[msg.sender] = totalSupply;
    }

    function transfer(
    address _to,
    uint256 _amount
    ) public {

    }


}
