// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// Destructuring assignment
// Solidity supports destructuring assignment, which allows you to assign the members of an array or a tuple to individual variables.
// Destructuring assignment is a convenient way of extracting data from arrays and tuples into local variables.
// Destructuring assignment is also useful for returning multiple values from a function.

contract LearningDestructuring {
    uint public changeValue;
    string public tom = "Hello";

    function f() public pure returns (uint, bool, string memory) {
        return (3, true, "Goodbye!");
    }

    // A function can return multiple values, and you can use destructuring assignment to assign the returned values to individual variables.
    function g() public {
        (changeValue, , tom) = f();
    }
}
