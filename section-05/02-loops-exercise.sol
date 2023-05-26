// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// Exercise
// 1. Create a contract MyLoopingPracticeContract and place all the following code within:
// 2. Create a list ranging from 1 to 20 called longList
// 3. Create a list called numberList of the following numbers: 1, 4, 34, 56
// 4. Create a function that loops through numberList and returns a true value if the number that the user inputs exists in the list otherwise return false.
// 5. Create a function that loops through and returns how many even numbers are in the longList

contract MyLoopingPracticeContract {
    uint[] longList = [
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20
    ];
    uint[] numberList = [1, 4, 34, 56];

    function checkIfInNumbersList(uint num) public view returns (bool) {
        for (uint i = 0; i < numberList.length; i++) {
            if (numberList[i] == num) {
                return true;
            }
        }
        return false;
    }

    function countOdd() public view returns (uint) {
        uint count = 0;
        for (uint i = 0; i < longList.length; i++) {
            if (longList[i] % 2 != 0) {
                count++;
            }
        }
        return count;
    }

    function countEven() public view returns (uint) {
        uint count = 0;
        for (uint i = 0; i < longList.length; i++) {
            if (longList[i] % 2 == 0) {
                count++;
            }
        }
        return count;
    }
}
