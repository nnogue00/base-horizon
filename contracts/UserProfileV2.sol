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

        require(
          bytes(users[msg.sender].name).length == 0,
          "Profile already exists"
        );

        users[msg.sender] = User(_name, _age);
    }

    function updateProfile(
        string memory _name,
        uint256 _age
    ) public {

        require(
          bytes(users[msg.sender].name).length > 0,
          "Profile does not exist"
        );

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
