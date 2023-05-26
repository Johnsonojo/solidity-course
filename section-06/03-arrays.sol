// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// What are arrays?
// An array is a collection of elements of the same type. These elements can be accessed by their index.
// An array can be declared as a state variable or a local variable.
// An array can be declared as a fixed-size array or a dynamic array.
// A fixed-size array has a fixed length that is specified at the time of declaration.
// A dynamic array has a variable length that is specified at the time of declaration.
// An array can be declared as a public, private, internal or external.
// An internal array can't be accessed from outside the contract.
// An external array can be accessed from outside the contract.
// An array can be declared as a memory array or a storage array.
// A memory array is created in the memory and it is temporary.
// A storage array is created in the storage and it is permanent.

contract LearnArrays {
    uint[] public myArray; // Dynamic storage array
    uint[] public myArray2; // Dynamic storage array
    uint[10] public myFixedSizedArray; // Fixed-size storage array

    // Add an element to the array
    function addToArray(uint _value) public {
        myArray.push(_value);
    }

    // pop an element from the array
    function popFromArray() public {
        myArray.pop(); // This will remove the last element from the array
    }

    // Get the length of the array
    function getArrayLength() public view returns (uint) {
        return myArray.length;
    }

    // Get the element at the given index
    function getArrayElement(uint _index) public view returns (uint) {
        return myArray[_index];
    }

    // Update the element at the given index
    function updateArrayElement(uint _index, uint _value) public {
        myArray[_index] = _value;
    }

    // Delete the element at the given index
    function deleteArrayElement(uint _index) public {
        delete myArray[_index]; // This will set the element to 0
    }

    // Delete the entire array
    function deleteArray() public {
        delete myArray;
    }
}
