// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// OPERATORS
//  An operator is a symbol that tells the compiler to perform specific mathematical or logical manipulations.
//  Solidity supports many operators, including arithmetic, comparison, logical, bitwise, assignment, and type operators.

// Arithmetic Operators: +, -, *, /, %, **, ++, --
// Comparison Operators: ==, !=, >, <, >=, <=
// Logical Operators: &&, ||, !
// Bitwise Operators: &, |, ^, ~, <<, >>

contract ArithmeticOperators {
    function add() public pure returns (uint) {
        uint a = 10;
        uint b = 5;
        uint result = a + b;
        return result;
    }

    function subtract() public pure returns (uint) {
        uint a = 10;
        uint b = 5;
        uint result = a - b;
        return result;
    }

    function division() public pure returns (uint) {
        uint a = 10;
        uint b = 5;
        uint result = a / b;
        return result;
    }

    function multiplication() public pure returns (uint) {
        uint a = 10;
        uint b = 5;
        uint result = a * b;
        return result;
    }

    function exponent() public pure returns (uint) {
        uint a = 10;
        uint b = 5;
        uint result = a ** b;
        return result;
    }

    function modulus() public pure returns (uint) {
        uint a = 10;
        uint b = 5;
        uint result = a % b;
        return result;
    }

    // Exercise
    // a = 2 and b = 12.
    // 1. a + b -b +a = 4
    // 2. a * b * b - 1 = 287
    // 3. b + b++ + a++ = 28
    // 4. (b % a) + 3 = 3
}
