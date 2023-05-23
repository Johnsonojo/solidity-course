// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract WelcomToSolidity {
    constructor() {}

    // This function adds two integers and returns the result
    function getResult() public pure returns (uint) {
        uint a = 10;
        uint b = 5;
        uint result = a + b;
        return result;
    }
}
