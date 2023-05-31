// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// Pure and View are similar, but View is used when you want to read from the blockchain and Pure is used when you want to write to the blockchain.
// View functions ensure that they will not modify the state of the blockchain.
// Pure functions ensure that they will not read from or modify the state of the blockchain.

contract MyContract {
    uint public value;

    function setvalue(uint _value) external {
        value = _value;
    }

    function getValue() external view returns (uint) {
        return value;
    }

    function getNewValue() external view returns (uint) {
        return value + 1;
    }
}
