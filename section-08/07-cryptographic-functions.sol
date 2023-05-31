// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// Cryptographic Function
// Solidity provides several cryptographic functions to perform cryptographic tasks.
// A cryptographic function is a mathematical algorithm that maps data of arbitrary size (often called the "message") to a bit string of a fixed size (called a "hash value", "hash" or "message digest").
// SOlidity provides the following cryptographic functions:
// keccak256(bytes memory) returns(bytes32): Computes the Keccak-256 hash of the input.
// sha256(bytes memory) returns(bytes32): Computes the SHA-256 hash of the input.
// ripemd160(bytes memory) returns(bytes20): Computes RIPEMD-160 hash of the input.

// Keccak is a leading hashing function, and it is used in many blockchain applications.

// Exercise: Smart Contract Oracle
// 1. Create a contract Oracle with address datatype called admin and a public integer datatype called rand.
// 2. Create a constructor that sets the value of admin to the current caller of the contract.
// 3. Write a function which takes the input of an integer and sets the state variable rand to that integer.
// 4. Requrire that current caller must be admin.
// 5. Set the Oracle contract to a new variable called oracle in the GenerateRandomNumber contract.
// 6. Write a constructor in the GenerateRandomNumber contract that sets the value of oracle to the address of the Oracle contract.
// 7. Modify the hash return so that the miners greatly lessen control manipulation to the random generarion.

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

    function setRand(uint256 num) external isAdmin {
        rand = num;
    }
}

contract GeneratRandomNumber {
    Oracle oracle;

    constructor(address _oracleAddress) {
        oracle = Oracle(_oracleAddress);
    }

    function generateRandomNumber(uint256 _mod) public view returns (uint256) {
        uint256 randomNumber = uint256(
            keccak256(
                abi.encodePacked(oracle.rand, block.timestamp, msg.sender)
            )
        );
        return (randomNumber % _mod);
    }
}
