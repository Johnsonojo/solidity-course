// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// Exercise
// 1. Create a contract FavoriteColor
// 2. Create a string variable called favoriteColor and assign it a value of blue.
// 3. Create a function called getFavoriteColor that returns the value of favoriteColor
// 4. Create a function called changeFavoriteColor that takes in a string parameter called _newColor and changes the value of favoriteColor to _newColor
// 5. Create a function called favColorCharCount that returns the number of characters in favoriteColor

contract FavoriteColor {
    string favoriteColor = "blue";

    function getFavoriteColor() public view returns (string memory) {
        return favoriteColor;
    }

    function changeFavoriteColor(string memory _newColor) public {
        favoriteColor = _newColor;
    }

    function favColorCharCount() public view returns (uint) {
        bytes memory stringToBytes = bytes(favoriteColor);
        return stringToBytes.length;
    }
}
