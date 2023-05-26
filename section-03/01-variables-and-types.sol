// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// Variables and Types
// Variables are used to store information in Solidity.
// There are different types of variables, and they can be declared in different places.
// Variables can be declared in a contract, outside of a contract, or in a function.
// Variables can be declared as a state variable, a local variable, or a function parameter.
// Variables can be declared as a value type or a reference type.
// Value types are passed by value, and reference types are passed by reference.
// Value types include bool, uint, int, address, bytes, and fixed-size arrays.
// Reference types include strings, arrays, mappings, and structs.
// Variables can be declared as public, private, internal, or external.
// Variables can be declared as constant or immutable.
// Variables can be declared as storage, memory, or calldata.
// Variables can be declared as payable or non-payable.
// Variables can be declared as abstract or virtual.
// Variables can be declared as override or overridable.
// When you create a variable, you reserve a space in memory to store the value of the variable.
// The value of a variable can be changed by assigning a new value to the variable.
// When writing smart contracts, you should use the smallest data type possible to save gas.

contract LearnVariables {
    uint chocolateBar = 10;
    uint storeOwner = 300;
    bool lieDetector = true;
    string errorMessageText = "Error! There has been a mistake!";

    // Exercise
    // 1. Create a new variable called wallet as an integer
    // 2. Create a boolean called spend
    // 3. Create a string and give it a name notifySpend
    // 4. Initialize the wallet to 500
    // 5. Set the value of spend to false
    // 6. Add the string literal (the string value) "you have spent money" to notifySpend

    uint wallet = 500;
    bool spend = false;
    string notifySpend = "you have not spent money";
}
