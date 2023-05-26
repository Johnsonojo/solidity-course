// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract LearnStrings {
    // Strings are used to store text. They are ordered collection of characters. They are enclosed in double quotes ("") or single quotes ('').

    string greeting = "Hello!";
    string public hello = "Hello how're you!";

    function sayHello() public view returns (string memory) {
        return greeting;
    }

    // memory is used to store the variable in memory and not in storage. This is because the function is a view function and it does not change the state of the contract.
    function greet(string memory _name) public {
        greeting = _name;
    }

    // Strings Vs Bytes
    // Strings are stored as UTF-8 encoded data. UTF-8 is a variable length encoding mechanism for Unicode. UTF-8 is backwards compatible with ASCII. UTF-8 is the most commonly used encoding mechanism for web applications.
    // Bytes are stored as binary data. They are stored as a fixed length sequence of bytes. Bytes are used to store raw data. They are used to store data that is not meant to be interpreted as text.
    // Bytes are more efficient than strings. Strings are more expensive than bytes.
    // Bytes are used to store raw data. Strings are used to store text.
    // Bytes are used to store data that is not meant to be interpreted as text. Strings are used to store text that is meant to be interpreted as text.

    // A function to return the length of the string
    function getCharCount() public view returns (uint) {
        bytes memory stringToBytes = bytes(greeting); // convert string to bytyoues to get the length
        return stringToBytes.length;
    }

    // A function to concatenate two strings and return the concatenated string space separated
    function concateStrs(
        string memory _str1,
        string memory _str2
    ) public pure returns (string memory) {
        return string(abi.encodePacked(_str1, " ", _str2));
    }
}
