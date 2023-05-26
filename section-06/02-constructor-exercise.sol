// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// Exerxise: Constructor
// 1. Create a contract called Base that takes an uint as an argument in the constructor and assigns that value to a state variable called data.
// 2. Create another contract called Derived that inherits from Base and takes an uint as an argument in the constructor and assigns that value to a state variable called data.
// 3. Create a function in Derived called getDerivedData that returns the value of data.

contract Base {
    uint data;

    constructor(uint _data) {
        data = _data;
    }

    function getData() public view returns (uint) {
        return data;
    }
}

contract Derived is Base {
    constructor(uint data) Base(data) {}

    function getDerivedData() public view returns (uint) {
        return data;
    }

    function getBaseData() public view returns (uint) {
        return getData();
    }

    function getBaseData2() public view returns (uint) {
        return data;
    }
}

// OR

// contract Derived is Base(5) {
//     constructor() {}

//     function getDerivedData() public view returns (uint) {
//         return data;
//     }
// }
