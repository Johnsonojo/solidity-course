// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// Final Operators Exercise
// 1. Create a contract called FinalExercise.
// 2. Initialize 3 state variables: a, b, and c.
// 3. Assign each variable the following values: a = 300, b = 12, c = 4.
// 4. Create a function called finalize that is public and viewable which returns a local variable d.
// 5. Initialize d to 23.
// 6. Return d in short handed assignment form to multiply itself by itself and then subtract b from the result.
contract FinalExercise {
    uint a = 300;
    uint b = 12;
    uint c = 4;

    function finalize() public view returns (uint) {
        uint d = 23;
        return (d *= d) - b;
    }
}
