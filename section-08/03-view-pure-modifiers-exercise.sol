// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// 1. Create a contract called ViewPureModifierExercise
// 2. Create a state variable called value of type uint
// 3. Create a function called setValue that takes a uint parameter and sets the value state variable to that parameter
// 4. Create a pure function called multiply that takes no parameters and returns the result of 3 * 7
// 5. Create a view function called valuePlusThree that takes no parameters and returns the result of value + 3
// 6. Create a function called setValueAndReturn that takes a uint parameter and sets the value state variable to that parameter and returns the value of value.

contract ViewPureModifierExercise {
    uint value;

    function setValue(uint _value) external {
        value = _value;
    }

    function multiply() external pure returns (uint) {
        return 3 * 7;
    }

    function valuePlusThree() external view returns (uint) {
        return value + 3;
    }

    function setValueAndReturn(uint _value) external returns (uint) {
        value = _value;
        return value;
    }
}
