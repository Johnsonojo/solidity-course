// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// Exercise: Enums
// 1. Create an enum for shirt colors called shirtColor and set it to the options Red or White or Green.
// 2. Create a data of shirtColor type called defaultChoice which is a constant set to the color Blue.
// 3. Create a data of shirtColor type called choice and don't initialize it.
// 4. Create a function called setWhite which changes the value of shirtColor to white.
// 5. Create a function called getChoice which returns the current choice of shirtColor.
// 6. Create a function getDefaultChoice which returns the default choice of shirtColor.

contract EnumsExercise {
    enum shirtColor {
        Red,
        White,
        Blue
    }

    shirtColor choice;
    shirtColor constant defaultChoice = shirtColor.Blue;

    function setWhite() public {
        choice = shirtColor.White;
    }

    function getChoice() public view returns (shirtColor) {
        return choice;
    }

    function getDefaultChoice() public pure returns (uint) {
        return uint(defaultChoice);
    }
}
