// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract UserProfile {

    struct User {
        string name;
        uint256 age;
    }

    mapping(address => User) public users;

    function createProfile(
        string memory _name,
        uint256 _age
    ) public {
        users[msg.sender] = User(_name, _age);
    }

    function getMyProfile()
        public
        view
        returns (string memory, uint256)
    {
        User memory user = users[msg.sender];

        return (user.name, user.age);
    }
}
