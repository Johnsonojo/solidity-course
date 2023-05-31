// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// Function Modifiers
// Function modifiers are used to modify the behaviour of a function in a declarative way.
// They can be used to:
// Restrict access
// Validate inputs
// Guard against reentrancy hack
// Guard against state changes
// Guard against integer overflow
// Guard against time manipulation
// etc.

contract Owner {
    address owner;

    // A constructor that sets the owner variable to the address of the contract creator.
    constructor() {
        owner = msg.sender;
    }

    // A function modifier named onlyOwner that requires the caller to be the owner.
    // The function modifier should use the require keyword to ensure that the caller is the owner.
    modifier onlyOwner() {
        require(msg.sender == owner);
        _; // run the function
    }

    // A function modifier named costs that checks if the msg.value is greater or equal the price and that uses the require keyword to stop the execution if the condition is not met.
    modifier costs(uint price) {
        require(msg.value >= price);
        _;
    }
}

contract Register is Owner {
    mapping(address => bool) registeredAddresses;
    uint price;

    constructor(uint initialPrice) {
        price = initialPrice;
    }

    function register() public payable costs(price) {
        registeredAddresses[msg.sender] = true;
    }

    // The onlyOner modifier is similar to a middleware in Express.js.
    function changePrice(uint _price) public onlyOwner {
        price = _price;
    }
}
