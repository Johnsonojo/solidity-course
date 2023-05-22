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
    // 4. Initialize the wallet to 500
    uint wallet = 500;
    // 2. Create a boolean called spend
    // 5. Set the value of spend to false
    bool spend = false;
    // 3. Create a string and give it a name notifySpend
    // 6. Add the string literal (the string value) "you have spent money" to notifySpend
    string notifySpend = "you have not spent money";
}
// contract LearnVariables {
//     // State Variables
//     uint public myUint = 1;
//     bool public myBool = true;
//     address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
//     bytes32 public myBytes32 = "Hello World";
//     string public myString = "Hello World";
//     uint[] public myUintArray = [1, 2, 3];
//     uint[10] public myFixedSizedArray;
//     enum State {
//         Waiting,
//         Ready,
//         Active
//     }
//     State public state;

//     // Local Variables
//     function getValue() public pure returns (uint) {
//         uint value = 1;
//         return value;
//     }

//     // Function Parameters
//     function getValue(uint value) public pure returns (uint) {
//         return value;
//     }

//     // Value Types
//     // bool
//     // uint
//     // int
//     // address
//     // bytes
//     // fixed-size arrays

//     // Reference Types
//     // strings
//     // arrays
//     // mappings
//     // structs

//     // Public, Private, Internal, External
//     // Public: can be accessed from within the contract or externally
//     // Private: can only be accessed from within the contract
//     // Internal: can be accessed from within the contract or contracts deriving from it
//     // External: can only be accessed from contracts deriving from the contract

//     // Constant and Immutable
//     // Constant: value is known at compile time
//     // Immutable: value is known at run time

//     // Storage, Memory, Calldata
//     // Storage: variable is stored permanently in the blockchain
//     // Memory: variable is stored temporarily in memory
//     // Calldata: special data location that contains function arguments

//     // Payable and Non-Payable
//     // Payable: can receive Ether
//     // Non-Payable: cannot receive Ether

//     // Abstract and Virtual
//     // Abstract: can only be used as a base contract
//     // Virtual: can be used as a base contract or inherited contract

//     // Override and Overridable
//     // Override: function must be overridden in the inherited contract
//     // Overridable: function can be overridden in the inherited contract

//     // Gas
//     // Gas is a unit that measures the amount of computational effort that it will take to execute certain operations.
//     // Gas is used to pay   for the computational effort that it will take to execute certain operations.
// }
