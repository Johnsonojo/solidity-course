// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// Exercise: Smart Contract Oracle
// 1. Create a contract Oracle with address datatype called admin and a public integer datatype called rand.
// 2. Create a constructor that sets the value of admin to the current caller of the contract.
// 3. Write a function which takes the input of an integer and sets the state variable rand to that integer.
// 4. Requrire that current caller must be admin.
// 5. Set the oracle contract to a new variable called oracle in the GenerateRandomNumber contract.
// 6. Write a constructor in the GenerateRandomNumber contract that sets the value of oracle to the address of the Oracle contract.
// 7. Modify the hash return so that the miners lose control manipulation to the ransom generarion.

contract Oracle {
    address admin;
    uint public rand;

    constructor() {
        admin = msg.sender;
    }

    modifier isAdmin() {
        require(msg.sender == admin);
        _;
    }

    function setRand(uint256 num) public isAdmin {
        rand = num;
    }
}
