// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// MAPPINGS
// Mappings are used to create key-value pairs and are declared outside of a function.
// Mappings are similar to hash tables or dictionaries in other programming languages.
// Mappings can be declared as public, internal or private and can be used to create arrays.

contract LearnMappings {
    mapping(address => uint) public balances;

    // get address
    function getAddress(address _address) public view returns (uint) {
        return balances[_address];
    }

    // set address
    function setAddress(address _address, uint _balance) public {
        balances[_address] = _balance;
    }

    // remove address
    function removeAddress(address _address) public {
        delete balances[_address];
    }
}
