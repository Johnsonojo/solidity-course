// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/**
 * Constructor is a special function that is executed during the creation of the contract.
 * It is used to initialize the contract's state.
 * A contract can have only one constructor.
 * A constructor is optional. If you don't provide one, a default constructor will be added.
 * A constructor code is executed only once, when the contract is created and it is used to initialize the contract's data.
 * After a constructor code is executed, it is not possible to execute it again.
 * A constructor can be declared as public, private, internal or external.
 * An internal constructor makes a contract abstract and can't be instantiated directly.
 */

contract Member {
    string name; // State variable
    uint age; // State variable

    // initialize the contract's state using constructor function
    constructor(string memory _name, uint _age) {
        name = _name;
        age = _age;
    }
}

// Teacher contract inherits from Member contract
contract Teacher is
    Member("Johnson", 35) // Inheriting from Member contract
{
    function getName() public view returns (string memory) {
        return name;
    }

    function getAge() public view returns (uint) {
        return age;
    }
}

// Staff contract inherits from Member contract
contract Staff is Member {
    constructor(string memory _name, uint _age) Member(_name, _age) {}

    function getName() public view returns (string memory) {
        return name;
    }
}
