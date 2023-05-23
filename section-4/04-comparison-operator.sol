// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// OPERATORS
//  An operator is a symbol that tells the compiler to perform specific mathematical or logical manipulations.
//  Solidity supports many operators, including arithmetic, comparison, logical, bitwise, assignment, and type operators.

// Arithmetic Operators: +, -, *, /, %, **, ++, --
// Comparison Operators: ==, !=, >, <, >=, <=
// Logical Operators: &&, ||, !
// Bitwise Operators: &, |, ^, ~, <<, >>

contract ComparisonOperators {
    uint a = 4;
    uint b = 6;

    function compare() public view {
        // <, >, <=, >=, ==, !=
        // less than
        require(a < b, "That is false");
        // greater than
        require(b > a, "That is false");
        // less than or equal to
        require(a <= b, "That is false");
        // greater than or equal to
        require(b >= a, "That is false");
        // equal to
        require(a == b, "That is false");
        // not equal to
        require(a != b, "That is false");
    }
}
