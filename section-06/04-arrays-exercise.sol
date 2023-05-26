// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// Exercise
// 1. Create an empty array called changeArray.
// 2. Create a function called removeElement which sets the index argument of the array to the last element in the array.
// 3. Remove the last index from that function with the pop method.
// 4. Create a function called test which pushes 1 2 3 4 into changeArray.
// 5. Remove the element 2 from the array when the contract is called.

contract ArraysExercise {
    uint[] public changeArray;

    function removeElement(uint _index) public {
        changeArray[_index] = changeArray[changeArray.length - 1];
        changeArray.pop();
    }

    function test() public {
        // changeArray.push(1);
        // changeArray.push(2);
        // changeArray.push(3);
        // changeArray.push(4);

        for (uint i = 1; i <= 4; i++) {
            changeArray.push(i);
        }
    }

    function removeElement2() public {
        for (uint i = 0; i < changeArray.length; i++) {
            if (changeArray[i] == 2) {
                removeElement(i);
            }
        }
    }

    function getChangeArray() public view returns (uint[] memory) {
        return changeArray;
    }
}
