// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// VARIABLE SCOPE - Functions & Variables
// Private: Only available to the contract, meaning it cannot be accessed outside of the contract.
// Internal: Only available to the contract and any contracts that inherit from it.
// External: Only available to external contracts and functions.
// Public: Available to everyone.

// How to decide which visibility to use?
// 1. If you want to hide the variable from the outside world, use private.
// 2. If you want to inherit the variable, use internal.
// 3. If you want to make the variable available to the outside world, use public.
// 4. If you want to make the variable available to the outside world and other contracts, use external.

contract C {
    uint public data = 10; // public state variable meaning it can be accessed outside of the contract
    uint private a = 20; // private function meaning it cannot be accessed outside of the contract

    function x() private view returns (uint) {
        // private function meaning it cannot be accessed outside of the contract
        // Exercise
        // Modify function x so that it returns 25 for data without changing the state variable.
        uint newData = data + 15;
        return newData;
    }

    function y() public view returns (uint) {
        // public state variable meaning it can be accessed from outside of the contract
        return data + 10;
    }
}
