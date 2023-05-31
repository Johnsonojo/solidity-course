// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// Function Overloading
// Solidity supports function overloading, which means that you can have multiple functions with the same name but different parameter types.
// Function overloading is also useful for writing functions that perform the same task on different types and numbers of inputs.
// The definitions of the function must differ from each other by the types and/or the number of arguments in the argument list.
// You cannot overload function declarations that differ only by return type.

contract FunctionOverload {
    function foo(uint256 _a, uint256 _b) public pure returns (uint256) {
        return _a + _b;
    }

    function foo(
        uint256 _a,
        uint256 _b,
        uint256 _c
    ) public pure returns (uint256) {
        return _a + _b + _c;
    }

    function getSum2(uint256 _a, uint256 _b) public pure returns (uint256) {
        return foo(_a, _b);
    }

    function getSum3(
        uint256 _a,
        uint256 _b,
        uint256 _c
    ) public pure returns (uint256) {
        return foo(_a, _b, _c);
    }

    function getSumTwo() public pure returns (uint256) {
        return foo(2, 3);
    }

    function getSumThree() public pure returns (uint256) {
        return foo(2, 3, 4);
    }
}
