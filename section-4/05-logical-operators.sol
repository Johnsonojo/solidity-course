// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// OPERATORS
//  An operator is a symbol that tells the compiler to perform specific mathematical or logical manipulations.
//  Solidity supports many operators, including arithmetic, comparison, logical, bitwise, assignment, and type operators.

// Arithmetic Operators: +, -, *, /, %, **, ++, --
// Comparison Operators: ==, !=, >, <, >=, <=
// Logical Operators: &&, ||, !
// Bitwise Operators: &, |, ^, ~, <<, >>

contract LogicalOperators {
    // Logical Operators
    uint a = 4;
    uint b = 5;

    function logicalAnd() public view returns (bool) {
        return (a == 4 && b == 5);
    }

    function logicalOr() public view returns (bool) {
        return (a == 4 || b == 6);
    }

    function logicalNot() public view returns (bool) {
        return !(a == 4 && b == 5);
    }

    // Exercise
    // 1.Create a function which will multiply c by d.
    // 2/ Only return the multiplication of the function if d is greater than c and c is not equal to d.
    // 3. Initialize c to 17 and d to 32.
    uint c = 17;
    uint d = 32;

    function logic() public view returns (uint) {
        uint result = 0;
        if (d > c && c != d) {
            result = c * d;
        }
        return result;
    }
}
