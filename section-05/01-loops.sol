// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// Loops
// loops are used to repeat code until a certain condition is met
// for loop is used when you know how many times you want to repeat the code
// while loop is used when you don't know how many times you want to repeat the code

contract LoopContract {
    uint[] public numbersList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    // create a function that can check if two numbers are divisible by each other - or they are multiples of each other.
    function checkMultiples(uint _num1, uint _num2) public pure returns (bool) {
        if (_num1 % _num2 == 0) {
            return true;
        } else {
            return false;
        }
    }

    function checkMultiplesCount(uint num) public view returns (uint) {
        uint count = 0;
        for (uint i = 0; i < numbersList.length; i++) {
            if (checkMultiples(numbersList[i], num)) {
                count++;
            }
        }
        return count;
    }

    function checkForMultiple(uint num) public view returns (uint[] memory) {
        uint[] memory multiples;
        uint count = 0;
        for (uint i = 0; i < numbersList.length; i++) {
            if (numbersList[i] % num == 0) {
                count++;
            }
        }
        multiples = new uint[](count);
        count = 0;
        for (uint i = 0; i < numbersList.length; i++) {
            if (numbersList[i] % num == 0) {
                multiples[count] = numbersList[i];
                count++;
            }
        }
        return multiples;
    }
}
