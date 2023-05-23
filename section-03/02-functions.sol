// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// Functions

// Functions are used to store logic in Solidity.
// Functions can be declared in a contract, outside of a contract, or in another function.
// Functions can be declared as public, private, internal, or external.
// Functions can be declared as pure or view.
// Functions can be declared as payable or non-payable.
// A function is a piece of code that performs a specific task.

contract LearnFunctions {
    // This is the syntax for declaring a function in Solidity.
    // function functionName(parameterList)scope returns(){statement}
    constructor() {}

    // state variables
    // state variables are declared outside of a function and can be accessed anywhere inside the contract.
    uint public stateVar = 45;

    // local variables
    // local variables are declared inside a function and can only be accessed inside the function.
    function addNumbers() public pure returns (uint) {
        uint a = 1;
        uint b = 2;
        uint result = a + b;
        return result;
    }

    uint multiplierFactor = 45;

    // Exercise
    // 1. Create a function called multiplyCalculator
    // 2. Create two parameters called a and b and set them as uint
    // 3. grant the function public visibility as well as view
    // 4. return the result of a multiplied by b as a uint
    // 5. Create a variable called result and set it to a multiplied by b
    // 6. return the result variable
    function multiplyCalculator(uint a, uint b) public pure returns (uint) {
        uint result = a * b;
        return result;
    }

    function multiplyByFourCalculator(uint a) public view returns (uint) {
        uint result = a * multiplierFactor;
        return result;
    }

    function dividedByFourCalculator(uint a) public view returns (uint) {
        uint result = a / multiplierFactor;
        return result;
    }
}
